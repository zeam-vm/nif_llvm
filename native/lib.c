#include <limits.h>
#include "erl_nif.h"
#include "loader.c"

typedef struct vector {
  int size;
  unsigned long *value;
} VECTOR;

int enif_get_big_num(ErlNifEnv *env, ERL_NIF_TERM term, unsigned *is_negative, VECTOR **value)
{
  int tuple_arity;
  const ERL_NIF_TERM *tuple;
  if(__builtin_expect((enif_get_tuple(env, term, &tuple_arity, &tuple) == 0), 0)) {
    return 0;
  }
  if(__builtin_expect(tuple_arity != 2, 0)) {
    return 0;
  }
  if(__builtin_expect((enif_get_uint(env, tuple[0], is_negative) == 0), 0)) {
    return 0;
  }
  unsigned int length;
  if(__builtin_expect((enif_get_list_length(env, tuple[1], &length) == 0), 0)) {
    return 0;
  }
  if(__builtin_expect((length == 0), 0)) {
    return 0;
  }
  ERL_NIF_TERM head, tail;
  if(__builtin_expect((enif_get_list_cell(env, tuple[1], &head, &tail) == 0), 0)) {
    return 0;
  }
  unsigned long *v = (unsigned long *)enif_alloc(sizeof(unsigned long) * length);
  if(__builtin_expect((v == NULL), 0)) {
    return 0;
  }
  *value = (VECTOR *)enif_alloc(sizeof(VECTOR));
  if(__builtin_expect((*value == NULL), 0)) {
    enif_free(v);
    return 0;
  }
  for(int i = 0; i < length; i++) {
    if(__builtin_expect((enif_get_uint64(env, head, &v[i]) == 0), 0)) {
      enif_free(v);
      return 0;
    }
    if(__builtin_expect((enif_get_list_cell(env, tail, &head, &tail) == 0), 0)) {
      if(i + 1 < length) {
        enif_free(v);
        return 0;
      }
    }
  }
  (*value)->size = length;
  (*value)->value = v;
  return 1;
}

ERL_NIF_TERM enif_make_big_num(ErlNifEnv *env, const unsigned is_negative, const VECTOR *value)
{
	ERL_NIF_TERM term_is_negative = enif_make_uint(env, is_negative);
	ERL_NIF_TERM *term_array = enif_alloc(sizeof(ERL_NIF_TERM) * value->size);
	for(int i = 0; i < value->size; i++) {
		term_array[i] = enif_make_uint64(env, value->value[i]);
	}
	ERL_NIF_TERM term_list = enif_make_list_from_array(env, term_array, value->size);
	enif_free(term_array);
	return enif_make_tuple2(env, term_is_negative, term_list);
}

static ERL_NIF_TERM arithmetic_error;
static ERL_NIF_TERM ok_atom;
static ERL_NIF_TERM error_atom;
static ERL_NIF_TERM arithmetic_error_atom;

static void init_nif_llvm(ErlNifEnv *env)
{
  arithmetic_error = enif_raise_exception(env, enif_make_atom(env, "ArithmeticError"));
  ok_atom = enif_make_atom(env, "ok");
  error_atom = enif_make_atom(env, "error");
  arithmetic_error_atom = enif_make_atom(env, "arithmetic_error");
}

static
ERL_NIF_TERM asm_1_nif_ii(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  long a, b;
  if(__builtin_expect((enif_get_int64(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_int64(env, argv[1], &b) == 0), 0)) {
    goto error;
  }

  long result;

  if(__builtin_expect(__builtin_saddl_overflow(a, b, &result), 0)) {
    goto error2;
  }

  return enif_make_tuple2(env, ok_atom, enif_make_int64(env, result));
error:
  return arithmetic_error;
error2:
  return enif_make_tuple2(env, error_atom, arithmetic_error_atom);
}


static
ERL_NIF_TERM asm_1_nif_uu(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  unsigned long a, b;
  if(__builtin_expect((enif_get_uint64(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_uint64(env, argv[1], &b) == 0), 0)) {
    goto error;
  }

  unsigned long result;

  if(__builtin_expect(__builtin_uaddl_overflow(a, b, &result), 0)) {
    goto error2;
  }

  return enif_make_tuple2(env, ok_atom, enif_make_uint64(env, result));
error:
  return arithmetic_error;
error2:
  return enif_make_tuple2(env, error_atom, arithmetic_error_atom);
}

static
ERL_NIF_TERM asm_1_nif_bb(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  unsigned a_neg, b_neg;
  VECTOR *a_v, *b_v;
  if(__builtin_expect((enif_get_big_num(env, argv[0], &a_neg, &a_v) == 0), 0)) {
    return arithmetic_error;
  }
  if(__builtin_expect((enif_get_big_num(env, argv[1], &b_neg, &b_v) == 0), 0)) {
    return arithmetic_error;
  }

	ERL_NIF_TERM result = enif_make_big_num(env, a_neg, a_v);

  enif_free(a_v->value);
  enif_free(a_v);
  enif_free(b_v->value);
  enif_free(b_v);

  return enif_make_tuple2(env, ok_atom, result);
}

static
ERL_NIF_TERM asm_1_nif_if(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  long a;
  double b;
  if(__builtin_expect((enif_get_int64(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_double(env, argv[1], &b) == 0), 0)) {
    goto error;
  }
  double result = ((double)a) + b;
  return enif_make_tuple2(env, ok_atom, enif_make_double(env, result));
error:
  return arithmetic_error;
}


static
ERL_NIF_TERM asm_1_nif_uf(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  unsigned long a;
  double b;
  if(__builtin_expect((enif_get_uint64(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_double(env, argv[1], &b) == 0), 0)) {
    goto error;
  }
  double result = ((double)a) + b;
  return enif_make_tuple2(env, ok_atom, enif_make_double(env, result));
error:
  return arithmetic_error;
}

static
ERL_NIF_TERM asm_1_nif_fi(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  double a;
  long b;
  if(__builtin_expect((enif_get_double(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_int64(env, argv[1], &b) == 0), 0)) {
    goto error;
  }
  double result = a + ((double) b);
  return enif_make_tuple2(env, ok_atom, enif_make_double(env, result));
error:
  return arithmetic_error;
}

static
ERL_NIF_TERM asm_1_nif_fu(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  double a;
  unsigned long b;
  if(__builtin_expect((enif_get_double(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_uint64(env, argv[1], &b) == 0), 0)) {
    goto error;
  }
  double result = a + ((double) b);
  return enif_make_tuple2(env, ok_atom, enif_make_double(env, result));
error:
  return arithmetic_error;
}
static
ERL_NIF_TERM asm_1_nif_ff(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  double a, b;
  if(__builtin_expect((enif_get_double(env, argv[0], &a) == 0), 0)) {
    goto error;
  }
  if(__builtin_expect((enif_get_double(env, argv[1], &b) == 0), 0)) {
    goto error;
  }
  double result = a + b;
  return enif_make_tuple2(env, ok_atom, enif_make_double(env, result));
error:
  return arithmetic_error;
}

static
ErlNifFunc nif_funcs[] =
{
  // {erl_function_name, erl_function_arity, c_function}
  {"asm_1_nif_ii", 2, asm_1_nif_ii},
  {"asm_1_nif_uu", 2, asm_1_nif_uu},
  {"asm_1_nif_bb", 2, asm_1_nif_bb},
  {"asm_1_nif_if", 2, asm_1_nif_if},
  {"asm_1_nif_uf", 2, asm_1_nif_uf},
  {"asm_1_nif_fi", 2, asm_1_nif_fi},
  {"asm_1_nif_fu", 2, asm_1_nif_fu},
  {"asm_1_nif_ff", 2, asm_1_nif_ff}
};

ERL_NIF_INIT(Elixir.NifLlvm, nif_funcs, &load, &reload, &upgrade, &unload)

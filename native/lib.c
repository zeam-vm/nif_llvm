#include <limits.h>
#include "erl_nif.h"
#include "loader.c"

static ERL_NIF_TERM arithmetic_error;
static ERL_NIF_TERM ok_atom;
static ERL_NIF_TERM error_atom;
static ERL_NIF_TERM nil_atom;

static void init_nif_llvm(ErlNifEnv *env)
{
	arithmetic_error = enif_raise_exception(env, enif_make_atom(env, "ArithmeticError"));
	ok_atom = enif_make_atom(env, "ok");
	error_atom = enif_make_atom(env, "error");
	nil_atom = enif_make_atom(env, "nil");
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
	return enif_make_tuple2(env, error_atom, nil_atom);
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
  {"asm_1_nif_if", 2, asm_1_nif_if},
  {"asm_1_nif_fi", 2, asm_1_nif_fi},
  {"asm_1_nif_ff", 2, asm_1_nif_ff}
};

ERL_NIF_INIT(Elixir.NifLlvm, nif_funcs, &load, &reload, &upgrade, &unload)

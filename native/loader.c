#include "erl_nif.h"

static void init_nif_llvm(ErlNifEnv *env);

static int
load(ErlNifEnv *env, void **priv, ERL_NIF_TERM info)
{
  init_nif_llvm(env);
  return 0;
}

static void
unload(ErlNifEnv *env, void *priv)
{
}

static int
reload(ErlNifEnv *env, void **priv, ERL_NIF_TERM info)
{
  return 0;
}

static int
upgrade(ErlNifEnv *env, void **priv, void **old_priv, ERL_NIF_TERM info)
{
  return load(env, priv, info);
}

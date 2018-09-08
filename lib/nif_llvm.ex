defmodule NifLlvm do
  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./priv/libnifllvm', 0)
  end

  @max_int 9_223_372_036_854_775_807
  @min_int -9_223_372_036_854_775_808

  @moduledoc """
  Documentation for NifLlvm.
  """

  def main do
    IO.puts asm_1(1, 2)
    IO.puts asm_1(1.0, 2)
    IO.puts asm_1(1, 2.0)
    IO.puts asm_1(1.0, 2.0)
    IO.puts asm_1(@max_int, 0)
    try do
      IO.puts asm_1(@max_int, 1)
    rescue
      error in [ArithmeticError, ErlangError] -> IO.puts "it needs BigNum!: #{Exception.message(error)}"
    end
    try do
      IO.puts asm_1(@max_int + 1, 1)
    rescue
      error in [ArithmeticError, ErlangError] -> IO.puts "it needs BigNum!: #{Exception.message(error)}"
    end
  end

  def asm_1(a, b) do
    case {a, b} do
        {a, b} when is_integer(a) and a <= @max_int and a >=@min_int and is_integer(b) and b <= @max_int and b >=@min_int -> asm_1_nif_ii(a, b)
        {a, b} when is_integer(a) and a <= @max_int and a >=@min_int and is_float(b) -> asm_1_nif_if(a, b)
        {a, b} when is_float(a) and is_integer(b) and b <= @max_int and b >=@min_int -> asm_1_nif_fi(a, b)
        {a, b} when is_float(a) and is_float(b) -> asm_1_nif_ff(a, b)
        _ -> raise ArithmeticError, message: "bad argument in arithmetic expression"
    end
  end

  def asm_1_nif_ii(a, b) when is_integer(a) and is_integer(b), do: raise "NIF asm_1_nif_ii/2 not implemented"
  def asm_1_nif_if(a, b) when is_integer(a) and is_float(b),   do: raise "NIF asm_1_nif_if/2 not implemented"
  def asm_1_nif_fi(a, b) when is_float(a)   and is_integer(b), do: raise "NIF asm_1_nif_fi/2 not implemented"
  def asm_1_nif_ff(a, b) when is_float(a)   and is_float(b),   do: raise "NIF asm_1_nif_ff/2 not implemented"

end

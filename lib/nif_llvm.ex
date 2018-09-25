defmodule NifLlvm do
  require OK
  require Asm
  import Asm

  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./priv/libnifllvm', 0)
  end

  @moduledoc """
  Documentation for NifLlvm.
  """

  def main do
    IO.puts asm_1(1, 2)
    IO.puts asm_1(1.0, 2)
    IO.puts asm_1(1, 2.0)
    IO.puts asm_1(1.0, 2.0)
    IO.puts asm_1(Asm.max_int, 0)
    IO.puts asm_1(Asm.min_int, 0)
    try do
      IO.puts asm_1(Asm.max_int, 1)
    rescue
      error in [ArithmeticError] -> IO.puts "it needs BigNum!: #{Exception.message(error)}"
    end
    try do
      IO.puts asm_1(Asm.max_int + 1, 1)
    rescue
      error in [ArithmeticError] -> IO.puts "it needs BigNum!: #{Exception.message(error)}"
    end
    try do
      IO.puts asm_1(Asm.max_uint + 1, 1)
    rescue
      error in [ArithmeticError] -> IO.puts "it needs BigNum!: #{Exception.message(error)}"
    end
  end

  def asm_1(a, b) do
    OK.try do
      result <- case {a, b} do
        {a, b} when is_int64(a)   and is_int64(b)   -> asm_1_nif_ii(a, b)
        {a, b} when is_uint64(a)  and is_uint64(b)  -> asm_1_nif_uu(a, b)
        {a, b} when is_integer(a) and is_integer(b) -> 
          IO.puts "need BigNum"
          {:error, :arithmetic_error}
        {a, b} when is_int64(a)   and is_float(b)   -> asm_1_nif_if(a, b)
        {a, b} when is_float(a)   and is_int64(b)   -> asm_1_nif_fi(a, b)
        {a, b} when is_float(a)   and is_float(b)   -> asm_1_nif_ff(a, b)
        _ -> {:error, :arithmetic_error}
      end
    after
      result
    rescue
      :arithmetic_error -> raise ArithmeticError, message: "bad argument in arithmetic expression"
    end
  end

  def asm_1_nif_ii(a, b) when is_int64(a)  and is_int64(b),  do: raise "NIF asm_1_nif_ii/2 not implemented"
  def asm_1_nif_uu(a, b) when is_uint64(a) and is_uint64(b), do: raise "NIF asm_1_nif_uu/2 not implemented"
  def asm_1_nif_if(a, b) when is_int64(a)  and is_float(b),  do: raise "NIF asm_1_nif_if/2 not implemented"
  def asm_1_nif_fi(a, b) when is_float(a)  and is_int64(b),  do: raise "NIF asm_1_nif_fi/2 not implemented"
  def asm_1_nif_ff(a, b) when is_float(a)  and is_float(b),  do: raise "NIF asm_1_nif_ff/2 not implemented"

end

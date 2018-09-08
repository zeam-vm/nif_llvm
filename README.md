# NifLlvm

This is a sample code of NIF by LLVM.

## Installation

### for Mac

```bash
$ brew install llvm
$ brew link llvm --force
$ git clone git@github.com:zeam-vm/nif_llvm.git
$ cd nif_llvm
```

## Running sample code

```elixir
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
```

```bash
$ mix run -e "NifLlvm.main"
```
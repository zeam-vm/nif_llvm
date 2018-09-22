defmodule NifLlvm.MixProject do
  use Mix.Project

  def project do
    [
      app: :nif_llvm,
      version: "0.1.0",
      elixir: "~> 1.6",
      compilers: [:nif_llvm] ++ Mix.compilers,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:asm, "~> 0.0.4"},
      {:ok, "~> 2.0"}
    ]
  end
end

defmodule Mix.Tasks.Compile.NifLlvm do
  def run(_) do
    if match? {:win32, _}, :os.type do
      # libpostal does not support Windows unfortunately.
      IO.warn("Windows is not supported.")
      exit(1)
    else
      File.mkdir_p("priv")
      {result, _error_code} = System.cmd("make", ["priv/libnifllvm.so"], stderr_to_stdout: true)
      IO.binwrite result
    end
    :ok
  end
end
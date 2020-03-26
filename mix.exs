defmodule Pooly.Mixfile do
  use Mix.Project

  def project do
    [
      app: :pooly,
      version: "3.0.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:logger],
      mod: {Pooly, []}
    ]
  end

  defp deps do
    []
  end
end

defmodule PhxFormatter.MixProject do
  use Mix.Project

  def project do
    [
      app: :phx_formatter,
      version: "0.1.9",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      name: "Phx Formatter",
      source_url: source_url(),
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp source_url do
    "https://github.com/RaymondLoranger/phx_formatter"
  end

  defp description do
    """
    Exports formatter configuration for a Phoenix project.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", ".formatter.exs"],
      maintainers: ["Raymond Loranger"],
      licenses: ["MIT"],
      links: %{"GitHub" => source_url()}
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
      {:dialyxir, "~> 1.0", only: :dev, runtime: false},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end
end

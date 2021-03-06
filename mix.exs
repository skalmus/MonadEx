defmodule Monad.Mixfile do
  use Mix.Project

  def project do
    [
      app: :monadex,
      version: "1.1.0",
      elixir: "~> 1.3.4",
      name: "MonadEx",
      source_url: "https://github.com/rob-brown/MonadEx",
      homepage_url: "https://github.com/rob-brown/MonadEx",
      deps: deps,
      description: description,
      package: package,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      consolidate_protocols: Mix.env != :test,
   ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 1.0.3", only: :dev},
      {:ex_doc, "~> 0.14.3", only: :dev},
    ]
  end

  defp description do
    """
    Improve pipelines with monads.
    """
  end

  defp package do
    [
      maintainers: ["Robert Brown"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/rob-brown/MonadEx"},
    ]
  end
end

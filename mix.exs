defmodule QRCODE.Mixfile do
  use Mix.Project
  def project() do
    [
      app: :qrcode,
      version: "0.1.0",
      elixir: "~> 1.7",
      description: "qrcode",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc include src mix.exs),
      licenses: ["Apache 2"],
      maintainers: ["Steve Davis"],
      name: :qrcode,
      links: %{"GitHub" => "https://gitlab.com/debruinf/qrcode"}
    ]

  end

  def application() do
    [
      mod: {:qrcode, []},
      applications: [:kernel,:stdlib,:crypto,:cowlib,:gun,:jsone,:hkdf,:curve25519,:qrcode,:kvs]
    ]

  end

  def deps() do
    [
    ]
  end

end


defmodule Myswt.Mixfile do
  use Mix.Project

  def project do
    [app: :myswt,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: 	[
    					:logger,
              :mimetypes,

						:cowboy,
						:bullet,
						:jazz,

						:exutils,
						:hashex,
						:silverb,
    				],
     mod: {Myswt, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:mimetypes, github: "spawngrid/mimetypes"},
    	{:cowboy, github: "ninenines/cowboy", tag: "0.9.0", override: true},
    	{:bullet, github: "timCF/bullet", override: true},
    	{:jazz, github: "meh/jazz"},

    	{:exutils, github: "timCF/exutils"},
    	{:hashex, github: "timCF/hashex"},
    	{:silverb, github: "timCF/silverb"},
    ]
  end
end

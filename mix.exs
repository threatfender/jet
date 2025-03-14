defmodule Jet.MixProject do
  use Mix.Project

  def project do
    [
      app: :jet,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs()
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
      {:tux, "~> 0.4.0"},
      {:ex_doc, "~> 0.37", only: :docs, runtime: false}
    ]
  end

  defp docs do
    [
      main: "Jet",
      extras: ["CHANGELOG.md", "README.md"],
      groups_for_modules: [
        Base: [
          Jet.Base,
          Jet.Base.InitCmd
        ],
        Carrier: [
          Jet.Carrier,
          Jet.Carrier.InitCmd,
          Jet.Carrier.UpCmd,
          Jet.Carrier.DownCmd
        ],
        Hangar: [
          Jet.Hangar,
          Jet.Hangar.InitCmd,
          Jet.Hangar.UpCmd,
          Jet.Hangar.DownCmd
        ],
        Pilot: [
          Jet.Pilot,
          Jet.Pilot.UpCmd,
          Jet.Pilot.DownCmd
        ],
        Wingman: [
          Jet.Wingman,
          Jet.Wingman.UpCmd,
          Jet.Wingman.DownCmd
        ],
        Release: [
          Jet.Release,
          Jet.Release.ControlCmd,
          Jet.Release.ControlCmd.StartCmd,
          Jet.Release.ControlCmd.StopCmd,
          Jet.Release.CreateCmd,
          Jet.Release.CreateCmd.BuildCmd,
          Jet.Release.CreateCmd.DeployCmd,
          Jet.Release.CreateCmd.LaunchCmd,
          Jet.Release.InitCmd
        ],
        Internals: [
          Jet.Mission.Plan
        ]
      ]
    ]
  end
end

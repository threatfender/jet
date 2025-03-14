defmodule Mix.Tasks.Jet do
  @shortdoc "Manage & deploy apps"
  @moduledoc """
  Deploy Elixir applications with ease.

  ## Concepts

    * Hangars
    * Carriers
    * Pilots
    * Jets

  # TODO: Add help documentation
  """

  use Mix.Task
  import Tux.Colors

  alias Mix.Tasks
  alias Jet.{Base, Carrier, Hangar, Pilot, Wingman, Release}

  def about(), do: @shortdoc

  def run([]), do: run(["quickref"])
  def run(["-h"]), do: run(["quickref"])

  def run(["quickref"]) do
    """

    #{bold("TASKS")}
      #{faint(Tasks.Jet.Base.about())}
      #{green("jet.base init")}      #{Base.InitCmd.about()}

      #{faint(Tasks.Jet.Carrier.about())}
      #{green("jet.carrier init")}   #{Carrier.InitCmd.about()}
      #{green("jet.carrier up")}     #{Carrier.UpCmd.about()}
      #{green("jet.carrier down")}   #{Carrier.DownCmd.about()}

      #{faint(Tasks.Jet.Hangar.about())}
      #{green("jet.hangar init")}    #{Hangar.InitCmd.about()}
      #{green("jet.hangar up")}      #{Hangar.UpCmd.about()}
      #{green("jet.hangar down")}    #{Hangar.DownCmd.about()}

      #{faint(Tasks.Jet.Pilot.about())}
      #{green("jet.pilot up")}       #{Pilot.UpCmd.about()}
      #{green("jet.pilot down")}     #{Pilot.DownCmd.about()}

      #{faint(Tasks.Jet.Wingman.about())}
      #{green("jet.wingman up")}     #{Wingman.UpCmd.about()}
      #{green("jet.wingman down")}   #{Wingman.DownCmd.about()}

      #{faint(__MODULE__.about())}
      #{green("jet init")}           #{Release.InitCmd.about()}
      #{green("jet launch")}         #{Release.CreateCmd.LaunchCmd.about()}
      #{green("jet deploy")}         #{Release.CreateCmd.DeployCmd.about()}

    #{bold("HELP")}
      Type #{green("mix help <task>")} for details on task usage. For example,
      to learn more about the carrier task, you would type:

      #{faint("$")} mix help jet.carrier
    """
    |> IO.puts()
  end

  def run([cmd | _] = args) when cmd in ~w(init) do
    Jet.Release.main(args)
  end

  def run([cmd | _] = args) when cmd in ~w(build launch deploy) do
    Jet.Release.main(["create" | args])
  end

  def run([cmd | _] = args) when cmd in ~w(start stop) do
    Jet.Release.main(["control" | args])
  end
end

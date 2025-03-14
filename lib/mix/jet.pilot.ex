defmodule Mix.Tasks.Jet.Pilot do
  @shortdoc "Manage system service"
  @moduledoc """
  Manage the underlying operating system service and environment.

  # TODO: Add help documentation
  """
  use Mix.Task

  def about(), do: @shortdoc

  def run([cmd | _] = args) when cmd in ~w(up down) do
    Jet.Pilot.main(args)
  end

  def run(_) do
    # Trigger help message
    Jet.Pilot.main([])
  end
end

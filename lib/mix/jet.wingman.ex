defmodule Mix.Tasks.Jet.Wingman do
  @shortdoc "Manage proxy services"
  @moduledoc """
  Manage accompanying proxy servers to supplement the main app.

  # TODO: Add help documentation
  """
  use Mix.Task

  def about(), do: @shortdoc

  def run([cmd | _] = args) when cmd in ~w(up down) do
    Jet.Wingman.main(args)
  end

  def run(_) do
    # Trigger help message
    Jet.Wingman.main([])
  end
end

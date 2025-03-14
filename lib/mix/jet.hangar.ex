defmodule Mix.Tasks.Jet.Hangar do
  @shortdoc "Manage build nodes & cloud resources"
  @moduledoc """
  Manage build nodes & cloud resources

  # TODO: Add help documentation
  """
  use Mix.Task

  def about(), do: @shortdoc

  def run([cmd | _] = args) when cmd in ~w(init up down) do
    Jet.Hangar.main(args)
  end

  def run(_) do
    # Trigger help message
    Jet.Hangar.main([])
  end
end

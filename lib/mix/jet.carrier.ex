defmodule Mix.Tasks.Jet.Carrier do
  @shortdoc "Manage app nodes & cloud resources"
  @moduledoc """
  Manage app nodes & cloud resources

  # TODO: Add help documentation
  """
  use Mix.Task

  def about(), do: @shortdoc

  def run([cmd | _] = args) when cmd in ~w(init up down) do
    Jet.Carrier.main(args)
  end

  def run(_) do
    # Trigger help message
    Jet.Carrier.main([])
  end
end

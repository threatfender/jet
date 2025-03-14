defmodule Mix.Tasks.Jet.Base do
  @shortdoc "Manage the base of operations"
  @moduledoc """
  An operations base is the centralized storage and management
  of operations.

  # TODO: Add help documentation
  """
  use Mix.Task

  def about(), do: @shortdoc

  def run([cmd | _] = args) when cmd in ~w(init) do
    Jet.Base.main(args)
  end

  def run(_) do
    # Trigger help message
    Jet.Base.main([])
  end
end

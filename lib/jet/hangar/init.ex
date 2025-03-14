defmodule Jet.Hangar.InitCmd do
  use Tux.Command

  @impl true
  def about(), do: "Generate cloud definition for builder nodes"

  @impl true
  def main(_, _), do: {:ok, "Hangar initialized"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

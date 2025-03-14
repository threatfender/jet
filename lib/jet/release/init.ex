defmodule Jet.Release.InitCmd do
  use Tux.Command

  @impl true
  def about(), do: "Initialize jet blueprint"

  @impl true
  def main(_, _), do: {:ok, "Jet initialized"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

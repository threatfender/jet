defmodule Jet.Carrier.InitCmd do
  use Tux.Command

  @impl true
  def about(), do: "Generate cloud definition for app nodes"

  @impl true
  def main(_, _), do: {:ok, "Carrier(s) initialized"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

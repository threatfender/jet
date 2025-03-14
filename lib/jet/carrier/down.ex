defmodule Jet.Carrier.DownCmd do
  use Tux.Command

  @impl true
  def about(), do: "Destroy cloud resources"

  @impl true
  def main(_, _), do: {:ok, "Carrier down"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

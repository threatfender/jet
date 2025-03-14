defmodule Jet.Pilot.DownCmd do
  use Tux.Command

  @impl true
  def about(), do: "Destroy system service"

  @impl true
  def main(_, _), do: {:ok, "Pilot down"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

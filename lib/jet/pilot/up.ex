defmodule Jet.Pilot.UpCmd do
  use Tux.Command

  @impl true
  def about(), do: "Create encapsulating system service"

  @impl true
  def main(_, _), do: {:ok, "Pilot up"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

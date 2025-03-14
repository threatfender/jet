defmodule Jet.Hangar.DownCmd do
  use Tux.Command

  @impl true
  def about(), do: "Destroy builder's cloud resources"

  @impl true
  def main(_, _), do: {:ok, "Hangar down"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

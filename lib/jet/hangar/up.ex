defmodule Jet.Hangar.UpCmd do
  use Tux.Command

  @impl true
  def about(), do: "Provision builder's cloud resources"

  @impl true
  def main(_, _), do: {:ok, "Hangar up"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

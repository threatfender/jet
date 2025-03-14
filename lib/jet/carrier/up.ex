defmodule Jet.Carrier.UpCmd do
  use Tux.Command

  @impl true
  def about(), do: "Provision cloud resources"

  @impl true
  def main(_, _), do: {:ok, "Carrier(s) up"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

defmodule Jet.Wingman.DownCmd do
  use Tux.Command

  @impl true
  def about(), do: "Destroy proxy service"

  @impl true
  def main(_, _), do: {:ok, "Wingman down"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

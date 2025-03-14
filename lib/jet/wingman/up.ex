defmodule Jet.Wingman.UpCmd do
  use Tux.Command

  @impl true
  def about(), do: "Create & manage proxy service"

  @impl true
  def main(_, _), do: {:ok, "Wingman up"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

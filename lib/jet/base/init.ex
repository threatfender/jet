defmodule Jet.Base.InitCmd do
  use Tux.Command

  @impl true
  def about(), do: "Initialize new operations base"

  @impl true
  def main(_, _), do: {:ok, "Base initialized"}

  @impl true
  def help() do
    Help.new()
    |> Help.text("Implement me ...")
    |> Help.ok()
  end
end

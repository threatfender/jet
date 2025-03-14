defmodule Jet.Release.ControlCmd do
  use Tux.Dispatcher

  defmodule StartCmd do
    use Tux.Command

    @impl true
    def about(), do: "Start a jet"

    @impl true
    def main(_, _), do: {:ok, "App started"}

    @impl true
    def help() do
      Help.new()
      |> Help.text("Implement me ...")
      |> Help.ok()
    end
  end

  defmodule StopCmd do
    use Tux.Command

    @impl true
    def about(), do: "Stop a jet"

    @impl true
    def main(_, _), do: {:ok, "App stopped"}

    @impl true
    def help() do
      Help.new()
      |> Help.text("Implement me ...")
      |> Help.ok()
    end
  end

  cmd "start", StartCmd
  cmd "stop", StopCmd
end

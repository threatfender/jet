defmodule Jet.Release.CreateCmd do
  use Tux.Dispatcher

  defmodule BuildCmd do
    use Tux.Command

    @impl true
    def about(), do: "Build a jet"

    @impl true
    def main(_, _), do: {:ok, "App built"}

    @impl true
    def help() do
      Help.new()
      |> Help.text("Implement me ...")
      |> Help.ok()
    end
  end

  defmodule LaunchCmd do
    use Tux.Command

    @impl true
    def about(), do: "Launch a jet (app & infra)"

    @impl true
    def main(_, _), do: {:ok, "App launched"}

    @impl true
    def help() do
      Help.new()
      |> Help.text("Implement me ...")
      |> Help.ok()
    end
  end

  defmodule DeployCmd do
    use Tux.Command

    @impl true
    def about(), do: "Deploy a jet (app)"

    @impl true
    def main(_, _), do: {:ok, "App deployed"}

    @impl true
    def help() do
      Help.new()
      |> Help.text("Implement me ...")
      |> Help.ok()
    end
  end

  cmd "build", BuildCmd
  cmd "launch", LaunchCmd
  cmd "deploy", DeployCmd
end

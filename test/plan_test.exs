defmodule Jet.PlanTest do
  use Tux.Case
  alias Jet.Mission.Plan
  import ExUnit.CaptureIO

  describe "plans" do
    test "plan show" do
      plan = %Plan{objective: "create a new carrier"}
      output = capture_io(fn -> IO.puts(plan) end)
      assert output =~ "Mission Objective"
    end

    test "plan execute" do
      plan = %Plan{}
      {:ok, _} = Plan.execute(plan)
    end
  end
end

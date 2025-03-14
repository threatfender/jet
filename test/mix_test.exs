defmodule Jet.MixTaskTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  # TODO: Implement task running capture in each test
  defp run_task(tail_module, task \\ nil) do
    module = Module.concat([Mix.Tasks.Jet, tail_module])

    capture_io(fn ->
      args = if task, do: [[task]], else: [[]]
      apply(module, :run, args)
    end)
  end

  describe "mix jet.hangar commands" do
    test "jet.hangar init", do: run_task(Hangar, "init")
    test "jet.hangar up", do: run_task(Hangar, "up")
    test "jet.hangar down", do: run_task(Hangar, "down")
    test "jet.hangar (shows help)", do: run_task(Hangar)
  end

  describe "mix jet.carrier commands" do
    test "jet.carrier init", do: run_task(Carrier, "init")
    test "jet.carrier up", do: run_task(Carrier, "up")
    test "jet.carrier down", do: run_task(Carrier, "down")
    test "jet.carrier (shows help)", do: run_task(Carrier)
  end

  describe "mix jet.pilot commands" do
    test "jet.pilot up", do: run_task(Pilot, "up")
    test "jet.pilot down", do: run_task(Pilot, "down")
    test "jet.pilot (shows help)", do: run_task(Pilot)
  end

  describe "mix jet.wingman commands" do
    test "jet.wingman up", do: run_task(Wingman, "up")
    test "jet.wingman down", do: run_task(Wingman, "down")
    test "jet.wingman (shows help)", do: run_task(Wingman)
  end

  describe "mix jet.base commands" do
    test "jet.base init", do: run_task(Base, "init")
    test "jet.base (shows help)", do: run_task(Base)
  end

  describe "mix jet[.release] commands" do
    test "jet (show quickref)", do: run_task(nil)
    test "jet -h (show quickref)", do: run_task(nil, "-h")
    test "jet init", do: run_task(nil, "init")
    test "jet build", do: run_task(nil, "launch")
    test "jet launch", do: run_task(nil, "launch")
    test "jet deploy", do: run_task(nil, "init")
    test "jet start", do: run_task(nil, "start")
    test "jet stop", do: run_task(nil, "stop")
  end
end

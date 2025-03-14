defmodule Jet.CmdPilotTest do
  use Tux.Case
  alias Jet.Pilot

  describe "pilot up" do
    scenario "pilot up",
      using: Pilot,
      invoke: "up",
      expect: [approx: "up"]

    scenario "pilot up -h",
      using: Pilot,
      invoke: "up -h",
      expect: [approx: "Implement me"]
  end

  describe "pilot down" do
    scenario "pilot down",
      using: Pilot,
      invoke: "down",
      expect: [approx: "down"]

    scenario "pilot down -h",
      using: Pilot,
      invoke: "down -h",
      expect: [approx: "Implement me"]
  end
end

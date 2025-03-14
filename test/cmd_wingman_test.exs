defmodule Jet.CmdWingmanTest do
  use Tux.Case
  alias Jet.Wingman

  describe "wingman up" do
    scenario "wingman up",
      using: Wingman,
      invoke: "up",
      expect: [approx: "up"]

    scenario "wingman up help",
      using: Wingman,
      invoke: "up -h",
      expect: [approx: "Implement me"]
  end

  describe "wingman down" do
    scenario "wingman down",
      using: Wingman,
      invoke: "down",
      expect: [approx: "down"]

    scenario "wingman down help",
      using: Wingman,
      invoke: "down -h",
      expect: [approx: "Implement me"]
  end
end

defmodule Jet.CmdHangarTest do
  use Tux.Case
  alias Jet.Hangar

  describe "hangar init" do
    scenario "init hangar",
      using: Hangar,
      invoke: "init",
      expect: [approx: "Hangar initialized"]

    scenario "init hangar help",
      using: Hangar,
      invoke: "init -h",
      expect: [approx: "Implement me"]
  end

  describe "hangar up" do
    scenario "hangar up",
      using: Hangar,
      invoke: "up",
      expect: [approx: "Hangar up"]

    scenario "up hangar help",
      using: Hangar,
      invoke: "up -h",
      expect: [approx: "Implement me"]
  end

  describe "hangar down" do
    scenario "hangar down",
      using: Hangar,
      invoke: "down",
      expect: [approx: "Hangar down"]

    scenario "hangar down help",
      using: Hangar,
      invoke: "down -h",
      expect: [approx: "Implement me"]
  end
end

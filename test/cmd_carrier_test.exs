defmodule Jet.CmdCarrierTest do
  use Tux.Case
  alias Jet.Carrier

  describe "carrier init" do
    scenario "carrier init",
      using: Carrier,
      invoke: "init",
      expect: [approx: "initialized"]

    scenario "carrier init -h",
      using: Carrier,
      invoke: "init -h",
      expect: [approx: "Implement me"]
  end

  describe "carrier up" do
    scenario "carrier up",
      using: Carrier,
      invoke: "up",
      expect: [approx: "up"]

    scenario "carrier up -h",
      using: Carrier,
      invoke: "up -h",
      expect: [approx: "Implement me"]
  end

  describe "carrier down" do
    scenario "carrier down",
      using: Carrier,
      invoke: "down",
      expect: [approx: "down"]

    scenario "carrier down -h",
      using: Carrier,
      invoke: "down -h",
      expect: [approx: "Implement me"]
  end
end

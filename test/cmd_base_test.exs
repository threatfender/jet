defmodule Jet.BaseCmdTest do
  use Tux.Case
  alias Jet.Base

  describe "base init" do
    scenario "base init",
      using: Base,
      invoke: "init",
      expect: [approx: "initialized"]

    scenario "base init help",
      using: Base,
      invoke: "init -h",
      expect: [approx: "Implement me"]
  end
end

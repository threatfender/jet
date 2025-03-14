defmodule Jet.CmdReleaseTest do
  use Tux.Case
  alias Jet.Release

  describe "jet about commands" do
    test "about create build", do: Release.CreateCmd.BuildCmd.about()
    test "about control start", do: Release.ControlCmd.StartCmd.about()
    test "about control stop", do: Release.ControlCmd.StopCmd.about()
  end

  describe "release init" do
    scenario "init release",
      using: Release,
      invoke: "init",
      expect: [approx: "Jet initialized"]

    scenario "init release help",
      using: Release,
      invoke: "init -h",
      expect: [approx: "Implement me"]
  end

  describe "release build" do
    scenario "build release",
      using: Release,
      invoke: "create build",
      expect: [approx: "App built"]

    scenario "build release help",
      using: Release,
      invoke: "create build -h",
      expect: [approx: "Implement me"]
  end

  describe "release launch" do
    scenario "launch release",
      using: Release,
      invoke: "create launch",
      expect: [approx: "App launched"]

    scenario "launch release help",
      using: Release,
      invoke: "create launch -h",
      expect: [approx: "Implement me"]
  end

  describe "release deploy" do
    scenario "deploy release",
      using: Release,
      invoke: "create deploy",
      expect: [approx: "App deployed"]

    scenario "deploy release help",
      using: Release,
      invoke: "create deploy -h",
      expect: [approx: "Implement me"]
  end

  describe "release start" do
    scenario "start release",
      using: Release,
      invoke: "control start",
      expect: [approx: "App started"]

    scenario "start release help",
      using: Release,
      invoke: "control start -h",
      expect: [approx: "Implement me"]
  end

  describe "release stop" do
    scenario "stop release",
      using: Release,
      invoke: "control stop",
      expect: [approx: "App stopped"]

    scenario "stop release help",
      using: Release,
      invoke: "control stop -h",
      expect: [approx: "Implement me"]
  end
end

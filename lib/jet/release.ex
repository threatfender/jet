defmodule Jet.Release do
  use Tux.Dispatcher

  cmd "init", Jet.Release.InitCmd
  cmd "create", Jet.Release.CreateCmd
  cmd "control", Jet.Release.ControlCmd
end

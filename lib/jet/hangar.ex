defmodule Jet.Hangar do
  use Tux.Dispatcher

  cmd "init", Jet.Hangar.InitCmd
  cmd "up", Jet.Hangar.UpCmd
  cmd "down", Jet.Hangar.DownCmd
end

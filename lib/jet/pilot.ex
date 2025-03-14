defmodule Jet.Pilot do
  use Tux.Dispatcher

  cmd "up", Jet.Pilot.UpCmd
  cmd "down", Jet.Pilot.DownCmd
end

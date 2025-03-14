defmodule Jet.Carrier do
  use Tux.Dispatcher

  cmd "init", Jet.Carrier.InitCmd
  cmd "up", Jet.Carrier.UpCmd
  cmd "down", Jet.Carrier.DownCmd
end

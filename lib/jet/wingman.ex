defmodule Jet.Wingman do
  use Tux.Dispatcher

  cmd "up", Jet.Wingman.UpCmd
  cmd "down", Jet.Wingman.DownCmd
end

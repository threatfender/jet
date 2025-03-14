defmodule Jet.Base do
  use Tux.Dispatcher

  cmd "init", Jet.Base.InitCmd
end

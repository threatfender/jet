defmodule Jet do
  @moduledoc """
  The `:jet` package implements a collection of Mix tasks to manage Elixir
  deployments straight from a project's source code directory.

  To that end, it aims to supply the functionality to:

    * Deploy Elixir releases
    * Create cloud infrastructure
    * Control deployed apps

  ## Requirements

    - ssh
    - rsync
    - terraform

  ## Usage

  * Initialize and deploy your Elixir app on carriers:

  ```shell
  $ mix jet init
  $ mix jet launch --carriers=2
  ```

  * To quickly view all jet tasks:

  ```shell
  $ mix jet
  ```

  * To access the help for a given task use `mix help`. For example:

  ```shell
  $ mix help jet           # View help for `mix jet` task
  $ mix help jet.carrier   # View help for `mix jet.carrier` task
  ```
  """
end

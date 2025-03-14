defmodule Jet.Mission.Plan do
  @moduledoc """
  A mission plan is the container for the sequence of steps to execute
  for more complex actions.

  It can be used to show the user an overview of what's about to happen.


  ## Plan Structure

    * **Mission Objective** - the objective is a short description
    of what the plan is set to achieve.

    * **Mission Reqs** - mission requirements should display the tools a given plan expects to
    exist on the machine prior to executing the plan.

    * **Mission Steps** - steps to perform for carrying the plan.

  """

  defstruct [:objective, reqs: [], steps: []]

  @doc """
  Execute all plan steps
  """
  def execute(_plan), do: {:ok, []}
end

defimpl String.Chars, for: Jet.Mission.Plan do
  def to_string(plan) do
    """
    Mission Objective
      - #{plan.objective}

    Mission Requirements
      - [local] ssh
      - [local] ssh-keygen
      - [local] find
      - [local] terraform
      - [remote] ssh

    Mission Plan
      - create new user
      - bla, bla
      - etc ...
    """
  end
end

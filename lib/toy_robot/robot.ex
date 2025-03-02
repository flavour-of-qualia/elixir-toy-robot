defmodule ToyRobot.Robot do
  @moduledoc """
  Documentation for `ToyRobot`.
  """

  alias ToyRobot.Robot
  defstruct [north: 0, east: 0, facing: :north]

  @doc """
  Moves the robot forward one space in the direction it is facing.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{north: 0, facing: :north}
      %Robot{north:0, facing: :north}
      iex> robot |> Robot.move
      %Robot{north: 1}
  """
  def move(%Robot{} = robot), do: robot |> move_north

  def move_north(robot), do: %Robot{north: robot.north + 1}
  def move_south(robot), do: %Robot{north: robot.north - 1}  
  def move_east(robot), do: %Robot{north: robot.east + 1}
  def move_west(robot), do: %Robot{north: robot.east - 1}
end

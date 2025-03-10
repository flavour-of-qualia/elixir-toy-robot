defmodule ToyRobot.RobotTest do
  use ExUnit.Case
  doctest ToyRobot.Robot
  alias ToyRobot.Robot

  describe "when the robot is facing north" do
    setup do
      {:ok, %{robot: %Robot{north: 0, facing: :north}}}
    end

    test "it moves space north", %{robot: robot} do
      robot = robot |> Robot.move
      assert robot.north == 1
    end 
  end

  describe "when the robot is facing east" do 
    setup do 
      {:ok, %{robot: %Robot{east: 0, facing: :east}}}
    end

    test "it moves one space east", %{robot: robot} do
      robot = robot |> Robot.move
      assert robot.east == 1
    end
  end
end


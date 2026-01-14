require 'rails_helper'

RSpec.describe Robots::Move do
  describe ".call" do
    it "moves one step to north" do
      robot = Robot.create!(
        robot_name: "Optimus",
        x_coordinate: 0,
        y_coordinate: 0,
        direction: "North"
      )

      Robots::Move.call(robot)
      robot.reload
      expect(robot.x_coordinate).to eq(0)
      expect(robot.y_coordinate).to eq(1)
    end
    it "moves one step to south" do
      robot = Robot.create!(
        robot_name: "Optimus",
        x_coordinate: 0,
        y_coordinate: 1,
        direction: "South"
      )

      Robots::Move.call(robot)
      robot.reload
      expect(robot.x_coordinate).to eq(0)
      expect(robot.y_coordinate).to eq(0)
    end
    it "moves one step to East" do
      robot = Robot.create!(
        robot_name: "Optimus",
        x_coordinate: 0,
        y_coordinate: 0,
        direction: "East"
      )

      Robots::Move.call(robot)
      robot.reload
      expect(robot.x_coordinate).to eq(1)
      expect(robot.y_coordinate).to eq(0)
    end
    it "moves one step to West" do
      robot = Robot.create!(
        robot_name: "Optimus",
        x_coordinate: 1,
        y_coordinate: 0,
        direction: "West"
      )

      Robots::Move.call(robot)
      robot.reload
      expect(robot.x_coordinate).to eq(0)
      expect(robot.y_coordinate).to eq(0)
    end
  end
end
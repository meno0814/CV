require 'rails_helper'

RSpec.describe Robots::Rotate do
  describe ".call" do
    it "will rotate direction clockwise" do
      robot = Robot.create!(
        robot_name: "Optimus",
        x_coordinate: 0,
        y_coordinate: 0,
        direction: "North"
      )

      Robots::Rotate.call(robot)
      robot.reload
      expect(robot.direction).to eq("East")

    end
  end
end
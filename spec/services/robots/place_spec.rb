# spec/services/robo_spec.rb
require 'rails_helper'

RSpec.describe Robots::Place do
  it "creates and saves a robot with given parameters" do
    params = {
      robot_name: "Optimus",
      x_coordinate: 0,
      y_coordinate: 0,
      direction: "North"
    }

    robot = Robots::Place.call(params)

    expect(robot).to be_persisted
    expect(robot.robot_name).to eq("Optimus")
    expect(robot.x_coordinate).to eq(0)
    expect(robot.y_coordinate).to eq(0)
    expect(robot.direction).to eq("North")
  end
end



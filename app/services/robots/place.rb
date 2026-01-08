module Robots
  class Place
    def self.call(robot_params)
      @robot = Robot.new
      @robot.robot_name = robot_params[:robot_name]
      @robot.y_coordinate = robot_params[:x_coordinate]
      @robot.x_coordinate = robot_params[:y_coordinate]
      @robot.direction = robot_params[:direction]
      @robot.save
      @robot
    end
  end
end
class RobotsController < ApplicationController
  #before_action :robot, only: [:show, :edit, :update]
  
  def index
    @robots = Robot.all
  end

  def place
    @robot = Robots::Place.call(robot_params)
    redirect_to @robot
    
  end

  def new
    @robot = Robot.new
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def move
    @robot = Robot.find(params[:id])
    Robots::Move.call(@robot)
    redirect_to @robot
  end

  def rotate
    @robot = Robot.find(params[:id])
    Robots::Rotate.call(@robot)
    redirect_to @robot
  end
  
  def report
    @robot = Robot.find(params[:id])
  end

  private 
  def robot_params
      params.require(:robot).permit(
        :robot_name,
        :x_coordinate,
        :y_coordinate,
        :direction
      )
  end

 def robot
  @robot = Robot.find(params[:id])
  end


end
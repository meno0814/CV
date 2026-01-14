module Robots
  class Move
    MAX_Y = 2
    MAX_X = 2
    def self.call(robot)
    if robot.x_coordinate.present? && robot.y_coordinate.present? && robot.direction.present?
      case robot.direction
      when "North"
        p "Can't go overboard" if (robot.y_coordinate + 1) > MAX_Y
        robot.y_coordinate += 1 if (robot.y_coordinate + 1) <= MAX_Y
        
      when "East"
        p "Can't go overboard" if (robot.x_coordinate + 1) > MAX_X
        robot.x_coordinate += 1 if (robot.x_coordinate + 1) <= MAX_X
        
      when "South"
        p "Can't go overboard" if (robot.y_coordinate - 1) < 0
        robot.y_coordinate -= 1 if (robot.y_coordinate - 1) >= 0
        
      when "West"
        p "Can't go overboard" if (robot.x_coordinate - 1) < 0
        robot.x_coordinate -= 1 if (robot.x_coordinate - 1) >= 0
        
      else
      end
    else
      p "Must run place first"
    end
    robot.save
    end
  end
end
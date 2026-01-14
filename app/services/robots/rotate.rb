module Robots
  class Rotate
    DIRECTIONS = { "North"=>0, "East"=>1, "South"=>2, "West"=>3 }
    def self.call(robot)
      robot.direction = DIRECTIONS.key((DIRECTIONS[robot.direction] + 1) % 4)
      robot.save

    end
  end
end
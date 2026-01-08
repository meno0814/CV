module Robots
  class Rotate
    DIRECTIONS = { "N"=>0, "E"=>1, "S"=>2, "W"=>3 }
    def self.call(robot)
      robot.direction = DIRECTIONS.key((DIRECTIONS[robot.direction] + 1) % 4)
      robot.save

    end
  end
end
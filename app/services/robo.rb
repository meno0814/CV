class Robo
  MAX_X = 2
  MAX_Y = 2
  DIRECTIONS = { "N"=>0, "E"=>1, "S"=>2, "W"=>3 }

  def initialize
    @current_x = nil
    @current_y = nil
    @current_direction = nil
  end

  def place(initial_x, initial_y, direction)
    @current_x = initial_x
    @current_y = initial_y
    @current_direction = direction
  end

  def move
    if @current_x.present? && @current_y.present? && @current_direction.present?
      case @current_direction
      when "N"
        p "Can't go overboard" if (@current_y + 1) > MAX_Y
        @current_y+= 1 if (@current_y + 1) <= MAX_Y
        position
      when "E"
        p "Can't go overboard" if (@current_x + 1) > MAX_X
        @current_x+= 1 if (@current_x + 1) <= MAX_X
        position
      when "S"
        p "Can't go overboard" if (@current_y - 1) < 0
        @current_y-= 1 if (@current_y - 1) >= 0
        position
      when "W"
        p "Can't go overboard" if (@current_x - 1) < 0
        @current_x-= 1 if (@current_x - 1) >= 0
        position
      else
      end
    else
      p "Must run place first"
    end
  end

  def rotate
    @current_direction = DIRECTIONS.key((DIRECTIONS[@current_direction] + 1) % 4)
    puts @current_direction
  end

  def position
    p "Robo at #{@current_x}, #{@current_y} facing #{@current_direction}"
  end
end

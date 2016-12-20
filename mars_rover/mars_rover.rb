class Rover
  attr_accessor :name, :x_coordinate, :y_coordinate, :direction

  def initialize(name, x_coordinate, y_coordinate, direction)
    @rov_name = name
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(command)
    command.chars.each do |input|
      if input == "M"
        puts "Move the Rover"
        move
      elsif input == "L"
        puts "Turn Left"
        turn_left
      elsif input == "R"
        puts "Turn Right"
        turn_right
      else
        puts "Oops! There seems to be an error. Try Again."
      end
    end
  end

  def move
    
  end

end

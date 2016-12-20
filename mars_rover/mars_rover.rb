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
    # puts "The Rover #{name} is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
  end

  def move
    if @direction == "N"
      @x_coordinate += 1
      puts "Rover #{name} is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "W"
      @y_coordinate -= 1
      puts "Rover #{name} is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "E"
      @y_coordinate += 1
      puts "Rover #{name} is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    else @direction == "S"
      @x_coordinate -= 1
      puts "Rover #{name} is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    end
  end

end

r2d2 = Rover.new("R2D2", x_coordinate, y_coordinate, direction)
r2d2.read_instruction(instruction)

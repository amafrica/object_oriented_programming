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
      @y_coordinate += 1
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "W"
      @x_coordinate -= 1
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "E"
      @x_coordinate += 1
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    else @direction == "S"
      @y_coordinate -= 1
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "W"
      @direction = "S"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "S"
      @direction = "E"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "E"
      @direction = "N"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    else
      "Oops! There seems to be an error. Why don't you try a different direction."
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "E"
      @direction = "S"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "S"
      @direction = "W"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    elsif @direction == "W"
      @direction = "N"
      puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."
    else
      "Oops! There seems to be an error. Why don't you try a different direction."
    end
  end

end

puts "What is your Rover's starting position on the x-axis?"
x_coordinate = gets.chomp.to_i

puts "What is your Rover's starting position on the y-axis?"
y_coordinate = gets.chomp.to_i

puts "Enter the direction you're facing: N/W/S/E"
direction = gets.chomp.upcase

puts "To move your Rover, enter L to turn left, R to turn right & M to move."

instruction = gets.chomp.upcase

puts "Your Rover is at #{x_coordinate}, #{y_coordinate} facing #{direction}."


# r2d2 = Rover.new(x_coordinate, y_coordinate, direction)
# r2d2.read_instruction(instruction)

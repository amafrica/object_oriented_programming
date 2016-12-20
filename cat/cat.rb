# # 1, 2
# class Cat
#
#   def initialize(name, preferred_food, meal_time)
#     @name = name
#     @preferred_food = preferred_food
#     @meal_time = meal_time
#     @@all << self
#   end
#
# # 4 eats_at instance method
#   def eats_at
#     if @meal_time < 12
#       return "Meal time is #{@meal_time} AM"
#     else
#       return "Meal time is #{@meal_time - 12} PM"
#     end
#   end
#
# # 5 meow instance method
#   def meow
#     return "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
#   end
#
# # 3 two instances of cat
#   def self.create_cats
#       Cat.new("Penny", "Kibble", 9)
#       Cat.new("Charlie", "Tuna", 7)
#   end
#
#
#
#   def profile
#     "Cat feeding profile: #{name} #{preferred_food} #{meal_time}"
#   end
# end

## ASSIGNMENT REVISIT

#1
class Dog

  attr_accessor :name, :preferred_food, :meal_time, :owner

#2
  def initialize(name, preferred_food, meal_time, owner)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    @owner = owner
  end

#4
# returns the hour of the day with AM or PM
  def eats_at
    if meal_time <= 11
      "#{meal_time} AM"
    elsif meal_time == 12
      "#{meal_time} PM"
    else
      pm = meal_time - 12
      "#{pm} PM"
    end
  end

#5
  def ruff
    puts "My name is #{name}, and I eat #{preferred_food} at #{eats_at}. Thanks for loving me #{owner}!"
  end

end

#3
  jacky = Dog.new("Jacky", "Beneful", 10, "Andy")
  stan = Dog.new("Stan", "Pedigree", 12, "Hayley")
  dante = Dog.new("Dante", "Gourmet Shit", 17, "Cruella DeVille")

#6
  puts jacky.ruff
  puts stan.ruff
  puts dante.ruff

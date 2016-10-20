# 1
class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    @@all << self
  end

# 4
  def eats_at
    if @meal_time < 12
      return "Meal time is #{@meal_time} AM"
    else
      return "Meal time is #{@meal_time - 12} PM"
    end
  end

# 5 MEOW Instance Method
  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end

  def self.create_cats
      Cat.new("Penny", "Kibble", 9)
      Cat.new("Charlie", "Tuna", 7)
  end



  def profile
    "Cat feeding profile: #{name} #{preferred_food} #{meal_time}"
  end
end

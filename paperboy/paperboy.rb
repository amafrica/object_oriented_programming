# class Paperboy
#   @@min_papers = 50
#
# attr_reader :earnings
#
#     def initialize (name, experience, earnings)
#       @name = name
#       @experience = experience # => number of papers delivered
#       @earnings = earnings # => amount of money earned
#
#     end
#
#     def quota
#       return 0.5 * @experience + @@min_papers
#     end
#
#     def deliver(start_address, end_address)
#        total_house = (end_address - start_address)
#        earning_per_house = 0.25 * total_house
#        extra_earnings = total_house - quota
#       if extra_earnings is >= 0
#         total_earnings = extra_earnings + (earning_per_house * 0.50)
#       else extra_earnings is < 0
#         total_earnings = extra_earnings - 2
#       end
#       @experience = @experience + total_house
#     end
#
#     def report
#       puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{total_earnings}"
#     end
#
#   end
#
# billy=Paperboy.new("Billy", 50, 60)
# billy.deliver(50, 60)
# billy.report


## ASSIGNMENT REVISIT

class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  @@min_quota = 50

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    quota = (experience / 2) + 50
  end

  def deliver(start_address, end_address)
    daily_houses = end_address - start_address

    if daily_houses >= quota
      daily_wage = (quota * 0.25) + ((daily_houses - quota) * 0.50)
    else
      daily_wage = (daily_houses * 0.25) - 2
    end

    puts daily_wage
    @earnings += daily_wage
    puts @earnings
    @experience = quota

  end

  def report
    "I'm #{name}, I've delivered #{experience} papers and I've earned #{earnings} so far!"
  end

end

andy = Paperboy.new("Andy", 20, 80)

puts andy.quota
puts andy.deliver(20, 80)
puts andy.deliver(100, 200)
puts andy.report

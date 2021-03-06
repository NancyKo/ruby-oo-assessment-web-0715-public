# Define a class Greeting with 4 methods
# say, morning?, afternoon?, night?

# When creating a Greeting, it should accept an argument of the hour
# of the day (in military time).

# The say method should give the appropriate greeting for the time
# of day using the morning?, afternoon?, night? methods.

# morning: 06 - 11: Good Morning!
# afternoon: 12 - 19: Good Afternoon!
# night: 20 - 05: Good night
class Greeting

  def initialize(time)
    @time = time
  end

  def say
    if self.morning?
      "Good Morning!"
    elsif self.afternoon?
      "Good Afternoon!"
    else
      "Good Night!"
    end
  end

  def morning?
    @time.between?(06, 11)
  end

  def afternoon?
    @time.between?(12, 19)
  end

  def night?
    (1..5).include?(@time) || (20..24).include?(@time)
  end
end
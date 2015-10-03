# Create a method on array called `list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g ["ich", "ni", "san"].make_list #=> ["1. ich", "2. ni", "3. san"]
class Array

  def self.list

  end

  def make_list
    self.map.with_index do |e, i| 
      "#{i + 1}. " + e
    end
  
  end

  def odds?
    self.map do |e|
      e % 3 == 0
    end
  end

  def symbol_roundup
    self.select { |e| e.is_a?(Symbol)}
  end
end
module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    return self unless block_given?
    count = 0
    while count < self.length
      yield self[count]
      count += 1
    end

    self
  end
end

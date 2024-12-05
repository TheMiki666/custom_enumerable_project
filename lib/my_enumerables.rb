module Enumerable
  # Your code goes here
  def my_each_with_index
    return self unless block_given?
    count = 0
    while count < self.length
      yield self[count], count
      count += 1
    end
    self
  end

  def my_select
    returning = []
    return returning unless block_given?
    count = 0
    while count < self.length
      returning.push(self[count]) if yield self[count]
      count += 1
    end
    returning
  end
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

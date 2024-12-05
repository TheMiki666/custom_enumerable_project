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

  def my_all?
    count = 0
    while count < self.length
      return false if !yield self[count]
      count += 1
    end
    true
  end

  def my_any?
    count = 0
    while count < self.length
      return true if yield self[count]
      count += 1
    end
    false
  end

  def my_none?
    count = 0
    while count < self.length
      return false if yield self[count]
      count += 1
    end
    true
  end

  def my_count (argument=nil)
    returning = 0
    count = 0
    while count < self.length
      if block_given?
        returning += 1 if yield self[count]
      elsif !argument.nil?
        returning +=1 if argument==self[count]
      else
        returning += 1
      end
      count += 1
    end
    returning
  end

  def my_map (simbol=nil)
    returning = []
    if block_given?
      count = 0
      while count < self.length
        returning.push(yield self[count]) 
        count += 1
      end
    elsif !simbol.nil?
      count = 0
      while count < self.length
        returning.push(yield self.simbol) 
        count += 1
      end
    else
      returning = self
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

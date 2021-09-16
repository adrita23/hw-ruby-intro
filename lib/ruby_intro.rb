# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
  #sum = 0
  #arr.each do |a| 
  #  sum += a
  #end
  #return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum(0)
end

def sum_to_n? arr, n
  # YOUR CODE HERE rspec -e '#sum ' spec/part1_spec.rb
  if arr == [] || arr.size ==1
    return false
  elsif arr.size >=2
    for i in 0...arr.length
      x = arr[i]
      y = n- x
      arr[i]= nil
      if arr.include?(y)
        return true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s.start_with?(/[a-zA-Z]/) && s.start_with?( /[^aeiouAEIOU]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match?(/[^01]/) or s == ""
    return false
  else
    num_s = s.to_i
    last3 = num_s % 1000
    return last3 == 0 || last3 == 100
  end
end

# Part 3

class BookInStock
# YOUR CODE 
attr_accessor :isbn, :price
#attr_writer :isbn, :price 

  def initialize(isbn, price)
    
    if isbn == "" or price <=0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string()
    self.price = self.price.to_f
    return "$%.2f" %self.price
  end
end

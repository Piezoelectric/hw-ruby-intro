# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum #This is the copout answer but hey, it's supported in 2.4
end

def max_2_sum arr
  arr = arr.sort
  arr = arr.reverse #Easiest way to get max 2 elements: sort the arr
  return arr[0,2].sum #Start at indx 0, retrieve 2 elements
end

def sum_to_n? arr, n
  arrayOfPairs = arr.combination(2).to_a #all combos of len n of elements from the array -> to_array
  arrayOfPairSums = arrayOfPairs.map{|x| x.sum} #take each element (a pair), sum it
  return arrayOfPairSums.include? n
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  sLower = s.downcase
  firstChar = sLower[0]
  return (['b','c','d','f','g',
  'h','j','k','l','m','n','o','p',
  'q','r','s','t','v','w','x','y','z'].include? firstChar)
end

def binary_multiple_of_4? s
  sLower = s.downcase
  if sLower =~ /[2-9]+/ #contains digits 2-9
    #print("2-9 branch")
    return false
  elsif sLower =~ /.*[a-z]+.*/ #contains chars
    #print("alfanum branch")
    return false
  elsif sLower == ""
    return false
  else #valid binary, try multiple of 4
    sInt = sLower.to_i
    return sInt % 4 ==0
  end
end
# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    shortPrice = sprintf('%.2f', @price)
    return "$" + shortPrice.to_s
  end
end

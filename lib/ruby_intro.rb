# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum #This is the copout answer but hey, it's supported in 2.4
end

def max_2_sum arr
  # YOUR CODE HERE
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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

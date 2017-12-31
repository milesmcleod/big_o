# Warmups

#1

def add(a, b)
  if a > b
    return a + b
  end

  a - b
end

# O(1): Constant time. No matter the combindation of inputs, this
# algorithm will only run one calculation and then return.

#2

def print_arr_1(arr)
  arr.each do |idx|
    puts el
  end
end

# O(n): Linear time. The number of puts statements is determined by the
# length of the input array.

#3

def print_arr_2(arr)
  arr.each_with_index do |el, idx|
    break if idx == arr.length/2 - 1
    puts el
  end
end

# O(n): Linear time. This will break once the function runs about n/2
# times, but n dominates the constant divisor 2, and so this is still
# of linear time complexity.

#4

def print_arr_3(arr)
  arr.each do |el|
    break if el == arr.length/2 - 1
    puts el
  end
end

# O(n): Linear time. Worst case: the elements in the array are not
# integers, so the loop will not break until if completes. Best case:
# the array contains integers, so it will have the same time complexity
# as problem #3, which is slightly better technically, but still O(n).

#5

def print_arr_4(arr)
  arr.each do |el|
    break if el == arr.length/2 - 1
    puts el
  end

  arr.each_with_index do |el, idx|
    puts el if idx % 3 == 0
  end

  puts arr.last
end

# O(n): Linear time. The first loop runs in the same linear time as the previous
# function. The next loop is also going to run in linear time, so the
# time complexity is O(n + n), or O(2n), where 2 is dominated by n.

#6

def search(arr, target)
  arr.each_with_index do |el, idx|
    return idx if el == target
  end
end

# O(n): Linear time. Worst case: never found, runs n times.

#7

def searchity_search(arr, target)
  results = []
  arr.each do |el|
    results << search(arr, target + el)
  end

  results
end

# O(n^2): Quadratic time. The each loop runs in n time, and for each
# stage of that loop, the search must run, which also runs in n time.

#8

def searchity_search_2(arr, target)
  results = []
  arr.each do |el|
    results << search(arr, el)
  end

  results
end

# O(m^2): Quadratic time. The outer loop necessitates at least n time to run.
# In the worst case scenario, for each element in the outer array, the
# nested search will return its index. For an array of length 4, the
# stages of the outer loop will return after 1, 2, 3, and 4 computations.
# 1 + 2 + 3 + 4 = 10.
#
# length 1: 1 computation.
# length 2: 3 computations.
# length 3: 6 computations.
# length 4: 10 computations.
#
# This is (n * (2 * (n+1))). The outer loop runs in n time, and for
# each n, the search runs in 2 * (n + 1) time. Ultimately, when constants
# are canceled, this runs in O(n^2).

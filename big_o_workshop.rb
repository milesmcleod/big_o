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

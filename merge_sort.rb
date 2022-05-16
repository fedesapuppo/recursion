# frozen_string_literal: true

# Merge Sort

# examples

# > merge_sort [1,6,3,5,7,2,8,4]
# => [1,2,3,4,5,6,7,8]

# > merge_sort [0,2,4,8,0,2,4,6]
# => [0,0,2,2,4,4,6,8]

# type

# mothod wich takes an array and returns an array

# header

# merge_sort(array)

# description

# In order to take an array and return a sorted array:
# select the array, split it as evendy as possible, select
# left subarray (continue splitting until there are only two numbers
# to compare). Then, merge the arrays back together, in order.
# To merge, select the minimun of two values (at index 0), and add the 
# selected value to the sorted array. When one list becomes empty, 
# copy all values from the remaining array into the sorted array.
# Repeat process in the right half of the original array (and subsecuent
# subarrays).

# body

def merge_sort(array)
  if array.size < 2
    array
  else
    left = merge_sort(array[0...array.size / 2])
    right = merge_sort(array[array.size / 2...array.size])
    merge(left, right)
  end
end

def merge(left, right, array = [])
  (left.size + right.size).times do
    if left.empty?
      array << right.shift
    elsif right.empty?
      array << left.shift
    else
      comparison = left <=> right
      if comparison == -1
        array << left.shift
      elsif comparison == 1
        array << right.shift
      else
        array << left.shift
      end
    end
  end
  array
end

# test

p merge_sort [1, 6, 3, 5, 7, 2, 8, 4]
# => [1,2,3,4,5,6,7,8]

p merge_sort [0, 2, 4, 8, 0, 2, 4, 6]
# => [0,0,2,2,4,4,6,8]

p merge_sort [3, 1, 2]
# => [1, 2, 3]

arr = []
rand(200).times do
  arr << rand(200)
end

p merge_sort(arr)
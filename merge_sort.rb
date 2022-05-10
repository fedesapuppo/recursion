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
  return array if array.length == 1

  arr_a = merge_sort(array.slice!(0, (array.length / 2).floor))
  arr_b = merge_sort(array)
  merged_arr = []
  merged_arr << (arr_a[0] > arr_b[0] ? arr_b.shift : arr_a.shift) until arr_a.empty? || arr_b.empty?
  merged_arr += arr_a.empty? ? arr_b : arr_a
end

# test

p merge_sort [1, 6, 3, 5, 7, 2, 8, 4]
# => [1,2,3,4,5,6,7,8]

p merge_sort [0, 2, 4, 8, 0, 2, 4, 6]
# => [0,0,2,2,4,4,6,8]

p merge_sort [3, 1, 2]
# => [1, 2, 3]

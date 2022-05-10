# frozen_string_literal: true

# Fibs

# examples

# > fibs(8)
# => [0, 1, 1, 2, 3, 5, 8, 13]

# > fibs(5)
# => [0, 1, 1, 2, 3]

# type

# mothod wich takes an integer and returns an array of integers

# header

# fibs(number)

# description

# takes a number and returns an array containing that many numbers from the fibonacci sequence.

# body

def fibs(number)
  sequence = []
  (0..number - 1).each do |n|
    sequence << if n < 2
                  n
                else
                  sequence[-1] + sequence[-2]
                end
  end
  sequence
end

def fibs_recursive(number)
  return [0] if number == 1
  return [0, 1] if number == 2

  arr = fibs_recursive(number - 1)
  arr << arr[-2] + arr[-1]
end

# test

p fibs(8)
# => [0, 1, 1, 2, 3, 5, 8, 13]

p fibs_recursive(8)
# => [0, 1, 1, 2, 3, 5, 8, 13]

p fibs_recursive(1)
# => [0]

p fibs_recursive(2)
# => [0, 1]

p fibs_recursive(5)
# => [0, 1, 1, 2, 3]

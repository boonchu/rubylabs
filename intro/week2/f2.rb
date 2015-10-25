#! /usr/bin/env ruby

def add(one, two)
    one + two
end

def divide(number)
    return false if number.zero?
    true
end

def factorial(n=5)
    n == 0 ? 1 : n * factorial(n-1)
end

def max(*numbers)
    numbers.max
end

puts add(2, 2)
puts factorial
puts max(7, 32, -1)

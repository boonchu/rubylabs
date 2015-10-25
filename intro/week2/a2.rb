#! /usr/bin/env ruby

stack = []
stack << "one"; stack.push("two")
puts stack.pop

queue = []
queue.push "one"
queue.push "two"
puts queue.shift

a = [5,3,4,2].sort!.reverse!
p a
p a.sample(2)

a[6] = 33
p a

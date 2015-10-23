#! /usr/bin/env ruby

1.times { puts "Hello Worlds" }

2.times do |index|
    if index > 0
        puts index
    end
end

3.times { |index| puts index if index > 0 }

def implicit_block
    return "(implicit) no block" unless block_given?
    yield
end

puts implicit_block { print "Hello World 1\n" }
puts implicit_block

def explicit_block (&i_am_a_block)
    return "(explicit) no block" if i_am_a_block.nil?
    i_am_a_block.call
end

puts explicit_block
explicit_block { puts "Hello world 2" }

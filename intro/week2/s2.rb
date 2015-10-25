#! /usr/bin/env ruby

my_name = " tim"
puts my_name.lstrip.capitalize 

p my_name 
my_name.lstrip!

my_name[0] = 'K'
puts my_name 

cur_weather = %Q{It's a hot day outside
                 Grab your umbrella...}

cur_weather.lines do |line|
  line.sub! 'hot', 'rainy' 
  puts "#{line.strip}"
end

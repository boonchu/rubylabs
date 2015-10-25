#! /usr/bin/env ruby

single_quote = 'ice cream \n followed by it\'s a party!'
double_quote = "ice cream \n followed by it\'s a party!"

puts single_quote
puts double_quote

def multiply(one, two)
  "#{one} multipled by #{two} equals #{one * two}"
end

puts multiply(5, 3)

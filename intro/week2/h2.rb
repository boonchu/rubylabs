#! /usr/bin/env ruby

family_tree_19 = { oldest: 'jim', older: 'joe', younger: 'jack' }
family_tree_19[:youngest] = 'jeremy'
p family_tree_19

def adj_colors ( properties = { foreground: 'red', background: 'white' })
  puts "foreground: #{properties[:foreground]}" if properties[:foreground]
  puts "background: #{properties[:background]}" if properties[:background]
end

adj_colors
adj_colors ({ :foreground => 'green' })
adj_colors background: 'yellow'
adj_colors :background => 'magenta'

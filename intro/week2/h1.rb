#! /usr/bin/env ruby

editor_props = { "font" => "Arial", "size" => 12, "color" => "red" }
puts editor_props.length 
puts editor_props["font"]

editor_props["background"] = "Blue"
editor_props.each_pair do |key, value|
  puts "Key: #{key} value: #{value}"
end

word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
  word_frequency[word.downcase] += 1
end

p word_frequency

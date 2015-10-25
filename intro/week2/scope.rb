#!/usr/bin/env ruby

module myPI
  PI =  3.14
  class calcPI
    def get_pi
      PI
    end
  end
end

puts myPI::calcPI.new.get_pi

#! /usr/bin/env ruby

begin

    if File.exist? 'test.txt'

        File.foreach( 'test.txt' ) do |line|
            puts line
            p line
            p line.chomp
            p line.split
        end

    else

        File.open( 'test.txt' ) do |file|
            file.puts 'This is a test line'
        end

    end

rescue Exception => e

    puts e.message

end

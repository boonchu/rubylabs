#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer

  #Implement the following read-only attributes in the LineAnalyzer class. 
  #
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)

  # -line- 1 : attr_reader to implemenet getter() (read only attribute)
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  #Add the following methods in the LineAnalyzer class.
  #
  #* initialize() - taking a line of text (content) and a line number
  #* calculate_word_frequency() - calculates result
  #
  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.

  # -line- 2 : initialize()
  def initialize(line, line_number)
    @highest_wf_count = 0
    @highest_wf_words = []
    @content = line
    @line_number = line_number
    calculate_word_frequency(@content, @line_number)
  end


  #Implement the calculate_word_frequency() method to:
  #
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.

  # -line- 3 : calculate_word_frequency()
  def calculate_word_frequency(content, line_number)
    words = []    
    c = content.split(' ')

    c.each do |w|
      count = c.count(w)
      unless words.include?(w)
        if count > @highest_wf_count then
          @highest_wf_count = count
        end
        words.push(w)
      end
    end

    words.each do |w|
      if c.count(w) == @highest_wf_count then
        @highest_wf_words.push(w) 
        #debug:- puts "#{highest_wf_words}(WORDS) #{w}(WORD) #{highest_wf_count}(HIGH COUNT)"
      end
    end

  end

  def to_s
    "#{highest_wf_words}(WORDS) #{highest_wf_count}(HIGH COUNT)"
  end   

end

#  Implement a class called Solution. 
class Solution

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.

  # -line- 1 : define read only attributes 
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  # -line- 2 : initialize()
  def initialize
    @analyzers = []
    @highest_count_across_lines = nil
    @highest_count_words_across_lines = nil
  end
  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file
  
  # -line- 3 : analyze_file()
  def analyze_file
    line_number = 0    
    begin

      # IO.foreach( 'test.txt' ) do |line|
      File.foreach( 'test.txt' ) do |line|
        line = line.downcase()
        line_number += 1
        @analyzers.push(LineAnalyzer.new(line, line_number))
      end
  
      @analyzers.each do |a|
        #debug: - puts "analyzer: #{a}"
      end
         
    rescue Exception => e
      puts e.message
    end
  end

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  # -line- 4 : calculate_line_with_highest_frequency()
  def calculate_line_with_highest_frequency
    @highest_count_across_lines = 0
    @highest_count_words_across_lines = []
    @analyzers.each do |a|
      if a.highest_wf_count > @highest_count_across_lines then
        @highest_count_across_lines = a.highest_wf_count
      end
      if a.highest_wf_count == @highest_count_across_lines then
        #debug: - puts "pushing to highest_count_words_across_lines #{a}"
        @highest_count_words_across_lines.push(a)
      end
    end
  end 

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format

  # -line- 5 : print_highest_word_frequency_across_lines()
  def print_highest_word_frequency_across_lines
    @highest_count_words_across_lines.each do |a|
      puts "#{a.highest_wf_words} (appears in line #{a.line_number})"
    end
  end
end

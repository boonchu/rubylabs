#! /usr/bin/env ruby

class Person

  def initialize (name, age)
    @name = name
    #@age = age    # use age as variable
    self.age = age # call age= method instead 
  end

  def get_info
    @additional_info = 'interesting'
    "Name: #{@name}, age: #{@age}"
  end

  def name
    @name
  end

  def name= (name)
    @name = name
  end

  def age= (age)
    @age ||= 5 # default is 5 when instance object initialize with age > 120
    @age = age unless age > 120
  end

end

person = Person.new('joe', 149)
p person.instance_variables
puts person.get_info
p person.instance_variables

person.name = 'mike'
puts person.get_info

person.age = 13
puts person.get_info

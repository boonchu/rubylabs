#! /usr/bin/env ruby

module SayMyName
  attr_accessor :name
  def print_name
    "Name: #{@name}"
  end
end

class Person
  include SayMyName
end

class Company
  include SayMyName
end

person = Person.new
person.name = 'joe'
puts person.print_name 

company = Company.new
company.name = 'Google Inc'
puts company.print_name

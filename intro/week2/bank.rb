#! /usr/bin/env ruby

class BankAccount
  attr_accessor :id, :amount
  
  def initialize(id, amount)
    @id = id
    @amount = amount
  end
end

accounts = [
  BankAccount.new(123, 200),
  BankAccount.new(321, 100),
  BankAccount.new(421, -100)
]

total = 0 
accounts.each do |account|
  total += account.amount
end

puts "Total amount of deposit #{total}"

require 'pry'

class BankAccount

attr_reader :name, :status
attr_accessor :balance, :status


 def initialize(name, balance=1000, status="open")
   @name=name
   @balance = balance
   @status =status

end

def deposit(some_money)
 @balance += some_money
end
def display_balance
 "Your balance is $#{@balance}."
end

def valid?
  self.status == "open" && self.balance > 0
  # binding.pry

end
def close_account
 @status ="closed"
end

end

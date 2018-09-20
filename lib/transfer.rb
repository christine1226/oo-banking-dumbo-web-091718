
require 'pry'
class Transfer
# attr_reader
attr_accessor :sender, :receiver, :status, :amount
 def initialize(sender, receiver, amount, status = "pending")
   @sender = sender
   @receiver = receiver
   @amount = amount
   @status = status

 end

def valid?
 @sender.valid? && @receiver.valid?
end

def execute_transaction
 if @status == "pending" && @amount <= @sender.balance
    @receiver.balance +=  @amount
     @sender.balance -= @amount
      @status = "complete"
    elsif  @status = "rejected"
        "Transaction rejected. Please check your account balance."
 end
end
def reverse_transfer
 # if @status = "complete"
 #
 # @receiver.balance = @receiver.balance - @amount
 #  @sender.balance = @sender.balance + @amount
 #
 #  @status = "reversed"

 if @status == "complete"
   @receiver.balance -= @amount
   @sender.balance += @amount
   @status = "reversed"
   binding.pry
end
end


end

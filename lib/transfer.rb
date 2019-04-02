class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    puts self.sender.valid? + " sender"
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    puts self.status
    puts self.valid?
    self.status = "rejected" if !self.valid?
    puts self.status
    transfer_money if self.status == "pending"
    puts self.status
    self.status == "complete" ? !self.valid? : "Transaction rejected. Please check your account balance."
  end
  
  def transfer_money
      self.sender.deposit(-amount)
      self.receiver.deposit(amount)
      self.status = "complete"
  end
end

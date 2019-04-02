class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize(receiver, sender, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid?(self.amount) && self.receiver.valid?(self.amount)
  end
  
  def execute_transaction
    self.status = "rejected" if !self.valid?
    transfer_money if self.status == "pending"
    self.status == "complete" ? !self.valid? : "Transaction rejected. Please check your account balance."
  end
  
  def transfer_money
      self.sender.deposit(-amount)
      self.receiver.deposit(amount)
      self.status = "complete"
  end
end

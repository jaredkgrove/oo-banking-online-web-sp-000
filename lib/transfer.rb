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
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    self.status = "rejected" if !self.valid?
    if self.status == "pending"

    end
  end
  
  def transfer_money
      self.sender.deposit(-amount)
      self.receiver.deposit(amount)
      self.status = "complete"
  end
end

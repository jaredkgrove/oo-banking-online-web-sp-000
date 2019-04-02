class Transfer
  attr_reader :sender, :receiver, :transfer_amount, :status
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
  end
end

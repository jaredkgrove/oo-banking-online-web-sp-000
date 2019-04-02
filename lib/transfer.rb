class Transfer
  attr_reader :sending_account, :receiving_account, :transfer_amount
  def initialize(sending_account, receiving_account, transfer_amount)
    @sending_account = sending_account
    @receiving_account = receiving_account
    @transfer_amount = transfer_amount
  end
end

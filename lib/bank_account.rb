class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name)
    @name = name 
    @balance = 1000.0
    @status = "open"
  end
  
  def deposit(ammount)
    @balance =+ ammount
  end
end

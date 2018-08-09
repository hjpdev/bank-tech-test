require 'date'

class ClientAccount
  attr_reader :balance

  def initialize(balance=0)
    @balance = balance
    @record = []
  end

  def deposit(amount, date=Date.today)
    @record << [amount, date]
    @balance += amount
  end

  def withdraw(amount, date=Date.today)
    @record << [amount, date]
    @balance -= amount
  end

  def statement
  end
end


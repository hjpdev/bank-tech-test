require 'date'

class ClientAccount
  attr_reader :balance, :record

  def initialize(balance=0)
    @balance = balance
    @record = []
  end

  def print_balance
    "£#{@balance}"
  end

  def deposit(amount, date=Date.today)
    @record << [amount, date.strftime('%F')]
    @balance += amount
  end

  def withdraw(amount, date=Date.today)
    @record << [amount, date.strftime('%F')]
    @balance -= amount
  end

  def statement
  end
end

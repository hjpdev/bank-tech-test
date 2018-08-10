require 'date'
require 'terminal-table'

class ClientAccount
  attr_reader :name, :balance, :record, :info_hash

  def initialize(name='Name Unknown', balance=0)
    @name = name
    @balance = balance
    @record = []
    @info_hash = {name: name, balance: balance}
  end

  def print_balance
    "£#{@balance}"
  end

  def deposit(date=Date.today, amount)
    @balance += amount
    @record << [date.strftime('%F'), "£#{amount}", "£#{@balance}"]
    info_hash[:balance] = @balance
  end

  def withdraw(date=Date.today, amount)
    raise('Unable, balance is too low.') if amount > @balance
    @balance -= amount
    @record << [date.strftime('%F'), "(£#{amount})", "£#{@balance}"]
    info_hash[:balance] = @balance
  end

  def statement
    table = Terminal::Table.new :headings => ['Date', 'Amount', 'Balance'], :rows => @record
    puts table
  end
end

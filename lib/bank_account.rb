# frozen_string_literal: true
require_relative 'transaction'

class BankAccount
  attr_reader :balance, :transactions_history
  
  DEFAULT_BALANCE = 0

  def initialize(transaction = Transaction)
    @balance = DEFAULT_BALANCE
    @transactions_history = []
    @transaction = transaction
  end

  def deposit(money)
    @balance += money

    credit = @transaction.new(money, 0, @balance)
    @transactions_history << credit

  end

  def withdraw(money)
    raise 'Insufficient funds' if money > @balance
    @balance -= money
  end

end

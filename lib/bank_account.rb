# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :history
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE, history = [])
    @balance = balance
    @history = history
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    raise 'Insufficient funds' if money > @balance
    @balance -= money
  end
end

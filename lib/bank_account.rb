# frozen_string_literal: true

class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    raise 'Insufficient funds' if money > @balance
    @balance -= money
  end
end

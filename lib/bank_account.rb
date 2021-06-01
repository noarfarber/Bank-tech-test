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
    raise 'Your current balance is 0' if @balance - money <= 0
    @balance -= money
  end
end

class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    raise "Your balance is currently £0" if @balance == 0
    @balance -= money
  end

end

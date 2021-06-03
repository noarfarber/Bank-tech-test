class Transaction

  attr_reader :credit, :debit, :balance, :date

  def initialize(credit, debit, balance, date = Time.now)
    @credit = credit
    @debit = debit
    @updated_balance = balance
    @date = date
  end
end
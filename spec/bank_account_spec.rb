require 'bank_account'

describe BankAccount do
  it 'should have 0 balance initially' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq 0
  end

  it 'should be able to deposit money into the account' do
    bank_account = BankAccount.new
    bank_account.deposit(1000)
    expect(bank_account.balance).to eq 1000
  end
end

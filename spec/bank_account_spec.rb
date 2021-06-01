require 'bank_account'

describe BankAccount do

  context '#deposit' do
    it 'can deposit money into the account' do
      bank_account = BankAccount.new
      bank_account.deposit(1000)
      expect(bank_account.balance).to eq 1000
    end
  end
  
  context '#withdraw' do
    it 'can withdraw money from the account' do
      bank_account = BankAccount.new
      bank_account.deposit(1000)
      bank_account.withdraw(500)
      expect(bank_account.balance).to eq 500
    end
  
    it 'should raise an error if the balance is under 0' do
      bank_account = BankAccount.new
      bank_account.deposit(1000)
      bank_account.withdraw(1000)
      expect { subject.withdraw(1) }.to raise_error("Your balance is currently £0")
    end
  end
end

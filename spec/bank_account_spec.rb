# frozen_string_literal: true

require 'bank_account'

describe BankAccount do

  context '#initialize' do
    it 'account is initially empty' do
      bank_account = BankAccount.new
      expect(bank_account.balance).to eq 0    
    end
  
    it 'account has an empty list for transactions as default' do
      bank_account = BankAccount.new
      expect(bank_account.history).to eq []
    end
  end

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

    it 'should raise an error when requesting to withdraw if the balance is 0' do
      bank_account = BankAccount.new
      bank_account.deposit(1000)
      expect { bank_account.withdraw(1001) }.to raise_error 'Insufficient funds'
    end
  end
  
end

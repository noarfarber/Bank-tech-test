# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  
  let(:bank_account) { described_class.new }

  describe '#initialize' do
    it 'account is initially empty' do
      expect(bank_account.balance).to eq 0
    end
  
    it 'account has an empty list for transactions as default' do
      expect(bank_account.transactions_history).to eq []
    end
  end

  describe '#deposit' do
    it 'increases the balance by the deposit amount' do
      bank_account.deposit(1000)
      expect(bank_account.balance).to eq 1000
    end

    it 'can add a credit to the transactions history array' do
      bank_account.deposit(1000)
      expect(bank_account.transactions_history.first.credit).to eq 1000 
    end
  end
  
  describe '#withdraw' do
    it 'decreases the balance by the amount of withdrawal' do
      bank_account.deposit(1000)
      bank_account.withdraw(500)
      expect(bank_account.balance).to eq 500
    end

    it 'should raise an error when requesting to withdraw if the balance is 0' do
      bank_account.deposit(1000)
      expect { bank_account.withdraw(1001) }.to raise_error 'Insufficient funds'
    end

    it 'can add a debit to the transactions history array' do
      bank_account.deposit(1000)
      bank_account.withdraw(500)
      expect(bank_account.transactions_history[1].debit).to eq 500
    end
  end
  
end

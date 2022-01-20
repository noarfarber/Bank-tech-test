# Bank Tech Test

## How to use

* `git clone` this repository
* `cd` into `bank_tech_test`
* `bundle install`
* run `irb` in the terminal

## Specification 

### Requirements
* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date       || credit  || debit  || balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00
```

### User Stories
```
As a bank account holder
So that I can briefly check my financial situation
I would like to be able to see my balance
```
```
As a bank account holder 
So that I can safely keep my money
I would like to be able to deposit money into my bank account
```
```
As a bank account holder
So that I can buy something 
I would like to be able to withdraw money from my bank account
```
```
As a bank account holder
So that I never spend money which I don't have
I can't withdraw money if my balance is under £0
```
```
As a bank account holder 
So that I can see my recent transactions in detail
I would like to be able to print my bank statement
```

 require 'date'
# require './lib/account.rb'
# require './lib/atm.rb'
class Person

    attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])   
    @cash = 0
    @account = nil
  end

  # we need to review this method- we don+t think it serves the purpose even thought the test passes
  def create_account
    self.account = Account.new(owner: self)
  end  

  def deposit (amount) 
    if @account != nil
       @cash -= amount
       @account.balance += amount
    else raise 'No account present'   
   end
  end 

  def withdraw(args = {})
    @account == nil ? missing_account : withdraw_funds(args)
  end 
 
  private

  def withdraw_funds(args)
    args[:atm] == nil ? missing_atm : atm = args[:atm]
    account = @account
    amount = args[:amount]
    pin = args[:pin]
    response = atm.withdraw(amount, pin, account)
    response[:status] == true ? increase_cash(response) : response
  end

  def missing_account
    raise "An account is required to manage your funds"
  end  

  def increase_cash(response)
    @cash += response[:amount]
  end

  def set_name(obj)
    obj == nil ? missing_name : obj
  end

  def missing_name
    raise "A name is required"
  end

  def missing_atm
    raise RuntimeError, 'An ATM is required'
  end

  
end    

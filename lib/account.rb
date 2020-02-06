class Account
    STANDARD_VALIDITY_YEARS = 5

    attr_accessor :exp_date, :account_status, :pin_code, :balance, :owner

    def initialize(attrs = {})
        @exp_date = set_expire_date
        @account_status = :active
        @owner = set_owner(attrs[:owner])
        @pin_code = rand(1000..9999)
        @balance = 0
    end
    
    def set_expire_date()
        Date.today.next_year(Account::STANDARD_VALIDITY_YEARS).strftime('%m/%y')
    end

    def self.deactivate(account)
        account.account_status = :deactivated
    end  

    private
    
    def set_owner(obj)
    # here we are using a Ternary Operator for the first time
    # take a look at this StackOverflow aswer to find out more
    # http://stackoverflow.com/a/4252945
    obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An Account owner is required"
    end


end

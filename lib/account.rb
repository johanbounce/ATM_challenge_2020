class Account
    STANDARD_VALIDITY_YEARS = 5

    attr_accessor :exp_date, :account_status

    def initialize(attrs = {})
        @exp_date = set_expire_date
        @account_status = :active
    end
    
    def set_expire_date()
        Date.today.next_year(Account::STANDARD_VALIDITY_YEARS).strftime('%m/%y')
    end

end

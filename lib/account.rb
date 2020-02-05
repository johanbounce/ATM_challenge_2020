class Account
   

    STANDARD_VALIDITY_YEARS = 5
    

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YEARS).strftime('%m/%Y')
    end

      def exp_date
      end

end

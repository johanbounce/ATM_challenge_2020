class Person

    attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])   
    @cash = 0
    @account = nil
    
    
  end
    
  # we need to review this method- we don+t think it serves the purpose even thought the test passes
 def create_account
    @account = Account.new(owner: name)
 end  


 def deposit (amount) 
  @cash = @cash - amount 
        
 end
 


  private

  


  def set_name(obj)
    obj == nil ? missing_name : obj
  end

  def missing_name
    raise "A name is required"
  end
end    

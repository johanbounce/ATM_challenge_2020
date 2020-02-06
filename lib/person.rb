class Person

    attr_accessor :name

  def initialize(attrs = {})
    @name = :name   
  end

  def missing_name
    raise "A name is required"
  end


end    
 
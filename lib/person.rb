class Person
  attr_accessor :name, :cash, :account, :deposit

def initialize (attrs = {})
  set_name(attrs[:name])
  @cash = 0
  @deposit = 100
end

def account_attribute
  person.account = nil
end

def create_account
  @account = Account.new({owner: self})
end

private

def set_name(obj)
  obj == nil ? missing_name : @name = obj
end

def missing_name
  raise "A name is required"
end

end

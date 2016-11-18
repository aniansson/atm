require 'date'

class Account
  attr_accessor :exp_date, :pin_code, :balance, :account_status, :owner

def initialize(attrs = {})
  @exp_date = set_expire_date
  @pin_code = generate_pin
  @balance = 0
  @account_status = :active
  set_owner(attrs[:owner])
end

  STANDARD_VALIDITY_YRS = 5

def set_expire_date
  Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
end

def self.deactivate(account)
  account.account_status = :deactivate
end


  private
    def generate_pin
      pin_code = '1234'
    end

    def set_owner(obj)
      obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
      raise "An Account owner is required"
    end

end

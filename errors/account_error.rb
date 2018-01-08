class AccountNotFoundError < StandardError
  def initialize(msg = 'Account not found in database')
    super
  end
end
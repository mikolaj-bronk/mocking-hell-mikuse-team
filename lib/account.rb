class Account
  attr_accessor :id, :firstname, :lastname, :login, :password

  def initialize(id, firstname, lastname, login, password)
    @id = id
    @firstname = firstname
    @lastname = lastname
    @login = login
    @password = password
  end

  def to_s
    account = "#{login} ; #{firstname} ; #{lastname}"
    account
  end
end

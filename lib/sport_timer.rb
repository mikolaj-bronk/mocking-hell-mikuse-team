class SportTimer
  attr_accessor :people, :accounts

  @@people = []
  @@accounts = []

  def add_person(firstname, lastname, country)
    size = @@people.size
    id = 0
    id += 1 while id < size && !@@people[id].nil?
    person = Person.new(id, firstname, lastname, country)
    @@people.insert(id, person)
    puts "Added new person to database:
    id- #{@@people[id].id} ,
    firstname- #{@@people[id].firstname} ,
    lastname- #{@@people[id].lastname} ,
    country- #{@@people[id].country}."
  end

  def show_person(id)
    if !@@people.at(id).nil?
      puts "Person on id = #{@@people[id].id}: #{@@people[id]}"
    else
      puts "Person on id = #{id} does not exist in database."
    end
  end

  def edit_person(id, firstname, lastname, country)
    if !@@people.at(id).nil?
      insert_data_edit_person(id, firstname, lastname, country)
      puts "Updated person on id = #{@@people[id].id}."
    else
      puts "Person on id = #{id} does not exist in database."
    end
  end

  def insert_data_edit_person(id, firstname, lastname, country)
    @@people[id].firstname = firstname if firstname != ''
    @@people[id].lastname = lastname if lastname != ''
    @@people[id].country = country if country != ''
  end

  def remove_person(id)
    if !@@people.at(id).nil?
      @@people[id] = nil
      puts "Removed person on id = #{id}."
    else
      puts "Person on id = #{id} does not exist in database."
    end
  end

  def add_account(login, password, person)
    max = @@accounts.size
    id = 0
    id += 1 while id < max && !@@accounts[id].nil?
    account = Account.new(id, login, password, person)
    @@accounts.insert(id, account)
    puts "Added new account:
    login - #{@@accounts[id].login},
    password - #{@@accounts[id].password}."
  end

  def show_account(id)
    if !@@accounts.at(id).nil?
      puts "Account on id = #{@@accounts[id].id}: #{@@accounts[id]}"
    else
      puts "Account on id = #{id} does not exist in database."
    end
  end

  def edit_login_password(id, login, password)
    @@accounts[id].login = login if login != ''
    @@accounts[id].password = password if password != ''
  end

  def edit_account(id, login, password)
    if !@@accounts.at(id).nil?
      @@accounts[id].person = @@people[id]
      edit_login_password(id, login, password)
      puts "Updated account on id = #{@@accounts[id].id}."
    else
      puts "Account on id = #{id} does not exist in database."
    end
  end

  def remove_account(id)
    if !@@accounts.at(id).nil?
      @@accounts[id] = nil
      remove_person(id)
      puts "Removed account on id = #{id}."
    else
      puts "Account on id = #{id} does not exist in database."
    end
  end
end

require_relative '../lib/sport_timer.rb'
require_relative '../lib/person.rb'
require_relative '../lib/account.rb'

RSpec.describe 'SportTimer' do
   subject(:sport_timer) { SportTimer.new }

   context '#add_person' do
    it {
      firstname = 'Jan'
      lastname = 'Bak'
      country = 'Poland'
      expect { sport_timer.add_person(firstname, lastname, country) }.not_to raise_error
    }
    it {
      firstname = 'Albert'
      lastname = 'Smith'
      country = 'USA'
      expect { sport_timer.add_person(firstname, lastname, country) }.not_to raise_error
    }
  end

  context '#insert_data_edit_person' do
    it {
      id = 0
      firstname = 'Math'
      lastname = 'Janniston'
      country = 'France'
      expect { sport_timer.insert_data_edit_person(id, firstname, lastname, country) }.not_to raise_error
    }

    it {
      id = 1
      firstname = 'Charles'
      lastname = 'Bright'
      country = 'England'
      expect { sport_timer.insert_data_edit_person(id, firstname, lastname, country) }.not_to raise_error
    }
  end

  context '#edit_person' do
      it {
        id = 0
        country = 'Germany'
        expect { sport_timer.edit_person(id, '', '', country) }.not_to raise_error
      }
      it {
        id = 0
        firstname = 'Math'
        lastname = 'Janniston'
        expect { sport_timer.edit_person(id, firstname, lastname, '') }.not_to raise_error
      }
      it {
        id = 1
        firstname = 'Math'
        lastname = 'Janniston'
        country = 'France'
        expect { sport_timer.edit_person(id, firstname, lastname, country) }.not_to raise_error
      }
      it {
        id = 0
        expect { sport_timer.edit_person(id, '', '', '') }.not_to raise_error
      }
    end

  context '#remove_person' do
      it { expect { sport_timer.remove_person(0) }.not_to raise_error }
      it { expect { sport_timer.remove_person(1) }.not_to raise_error }
    end

  context '#show_person' do
    it { expect { sport_timer.show_person(0) }.not_to raise_error }
    it { expect { sport_timer.show_person(1) }.not_to raise_error }
  end

  context '#add_account' do
    it {
      login = 'mjanniston'
      password = 'pass'
      firstname = 'Math'
      lastname = 'Janniston'
      country = 'France'
      person = double('Person', id: 0, firstname: firstname, lastname: lastname, country: country)
      expect { sport_timer.add_account(login, password, person) }.not_to raise_error
    }
    it {
      login = 'mjanniston'
      password = 'pass123'
      firstname = 'Harold'
      lastname = 'Bohme'
      country = 'Germany'
      person = double('Person', id: 1, firstname: firstname, lastname: lastname, country: country)
      expect { sport_timer.add_account(login, password, person) }.not_to raise_error
    }
    it {
      login = 'szuk'
      password = 'pass2234'
      firstname = 'Sebastian'
      lastname = 'Gamrot'
      country = 'USA'
      person = double('Person', id: 2, firstname: firstname, lastname: lastname, country: country)
      expect { sport_timer.add_account(login, password, person) }.not_to raise_error
    }
  end

  context '#show_account' do
    it { expect { sport_timer.show_account(0) }.not_to raise_error }
    it { expect { sport_timer.show_account(1) }.not_to raise_error }
    it { expect { sport_timer.show_account(2) }.not_to raise_error }
  end

  context '#edit_account' do
    it {
      id = 0
      login = 'Mark22'
      expect { sport_timer.edit_account(id, login, '') }.not_to raise_error
    }
    it {
      id = 1
      password = 'passsss'
      expect { sport_timer.edit_account(id, '', password) }.not_to raise_error
    }
    it {
      id = 1
      login = 'markopolo123'
      password = 'pass123'
      expect { sport_timer.edit_account(id, login, password) }.not_to raise_error
    }
    it {
      id = 0
      expect { sport_timer.edit_account(id, '', '',) }.not_to raise_error
    }
  end

  context '#remove_account' do
    it { expect { sport_timer.remove_account(0) }.not_to raise_error }
    it { expect { sport_timer.remove_account(1) }.not_to raise_error }
    it { expect { sport_timer.remove_account(2) }.not_to raise_error }
  end
end

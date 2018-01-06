require_relative '../lib/sport_timer.rb'
require_relative '../lib/person.rb'

RSpec.describe 'SportTimer' do
   subject(:sport_timer) { SportTimer.new }

   context '#add_person' do
    it {
      pers = double('Person', firstname: 'Jan', lastname: 'Bak', country: 'Poland')
      expect { sport_timer.add_person(pers.firstname, pers.lastname, pers.country) }.not_to raise_error
    }
    it {
      pers = double('Person', firstname: 'Albert', lastname: 'Smith', country: 'USA')
      expect { sport_timer.add_person(pers.firstname, pers.lastname, pers.country) }.not_to raise_error
    }
  end

  context '#edit_person' do
      it {
        country = 'Germany'
        expect { sport_timer.edit_person(0, '', '', country) }.not_to raise_error
      }
      it {
        firstname = 'Math'
        lastname = 'Janniston'
        expect { sport_timer.edit_person(0, firstname, lastname, '') }.not_to raise_error
      }
      it {
        firstname = 'Math'
        lastname = 'Janniston'
        country = 'France'
        expect { sport_timer.edit_person(0, firstname, lastname, country) }.not_to raise_error
      }
      it {
        expect { sport_timer.edit_person(1, '', '', '') }.not_to raise_error
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

end

require_relative '../lib/account.rb'

RSpec.describe 'Account' do
  context '#new' do
    let(:id) { 1 }
    let(:firstname) {double('FirstName', firstname: 'Joseph')}
    let(:lastname) {double('LastName', lastname: 'Brzdakal')}
    let(:login) { double('Login', login: 'jbrzdakal') }
    let(:password) { double('Password', password: 'pass123') }
    subject(:account) { Account.new id, firstname, lastname, login, password }

    it 'creates a new account' do
      expect { account }.not_to raise_error
    end

    it 'returns Account type' do
      allow(account).to receive(:kind_of?).and_return(Account)
      expect(account).to be_a_kind_of(Account)
    end

    it 'returns correct id' do
      expect(account.id).to eq(id)
    end

    it 'returns correct firstname' do
      expect(account.firstname).to eq(firstname)
      expect(account.firstname.to_s).to be_a(String).and include(firstname.to_s)
    end

    it 'returns correct lastname' do
      expect(account.lastname).to eq(lastname)
      expect(account.lastname.to_s).to be_a(String).and include(lastname.to_s)
    end

    it 'returns correct login' do
      expect(account.login).to eq(login)
      expect(account.login.to_s).to be_a(String).and include(login.to_s)
    end

    it 'returns correct password' do
      expect(account.password).to eq(password)
      expect(account.password.to_s).to be_a(String).and include(password.to_s)
    end
  end
  context '#to_s' do
    let(:id) { 1 }
    let(:firstname) {double('FirstName', firstname: 'Joseph')}
    let(:lastname) {double('LastName', lastname: 'Brzdakal')}
    let(:login) { double('Login', login: 'jbrzdakal') }
    let(:password) { double('Password', password: 'pass123') }
    subject(:account) { Account.new id, firstname, lastname, login, password }

    it 'returns correct output' do
      expect(account.to_s).to be_a(String).and include(login.to_s, firstname.to_s, lastname.to_s)
    end
  end
end

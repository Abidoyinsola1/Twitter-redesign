require 'rails_helper'

RSpec.describe User, type: :model do

  context 'validation tests' do
    it 'ensures name presence' do
      user = User.new(name: '', email: 'abig@gmail.com', username: 'abigirl', password: '12345678').save
      expect(user).to eql(false)
    end

    it 'ensures email presence' do
      user = User.new(name: 'Abigail', email: '', username: 'abigirl', password: '12345678').save
      expect(user).to eql(false)
    end

    it 'ensures username presence' do
      user = User.new(name: 'Abigail', email: 'abig@gmail.com', username: '', password: '12345678').save
      expect(user).to eql(false)
    end

    it 'ensures password presence' do
      user = User.new(name: 'Abigail', email: 'abig@gmail.com', username: 'abigirl', password: '').save
      expect(user).to eql(false)
    end

    it 'should save successfully' do
      user = User.new(name: 'Abigail', email: 'abig@gmail.com', username: 'abigirl', password: '12345678').save
      expect(user).to eql(true)
    end
  end

end

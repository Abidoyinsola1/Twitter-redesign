require 'rails_helper'

RSpec.describe Friendship, type: :model do
  context 'validation test' do
    it 'ensures presence of follower id' do
      User.new(name: 'Doyinsola', email: 'doyin@gmail.com', password: 'doyinsola', id: 1).save
      friend = Friendship.new(follower_id: 1).save
      expect(friend).to eq(false)
    end
  end
  context 'validation test' do
    it 'ensures presence of follower id' do
      User.new(name: 'Doyinsola', email: 'doyin@gmail.com', password: 'doyinsola', id: nil).save
      friend = Friendship.new(id: nil).save
      expect(friend).to eq(false)
    end
  end
end

require 'rails_helper'

RSpec.describe Friendship, type: :model do
    context 'positive validation test' do
      it 'ensures presence of follower id' do
        User.new(name: 'Doyinsola', email: 'doyin@gmail.com', password: 'doyinsola', id: 1).save
        friend = Friendship.new( follower_id: 2).save
        expect(friend).to eq(false)
      end
    end
    context 'negative validation test' do
      it 'ensures presence of user id and friend id' do
        User.new(name: 'Ayomide', email: 'ayomide@gmail.com', password: 'ayomide', id: 1).save
        User.new(name: 'Doyin', email: 'doyin@gmail.com', password: 'doyinreal', id: 2).save
        friend = Friendship.new(user_id: 1).save
        expect(friend).to eq(false)
      end
    end
    context 'negative validation test' do
      it 'ensures presence of user id and friend id' do
        User.new(name: 'Ayomide', email: 'ayomide@gmail.com', password: 'ayomide', id: 1).save
        User.new(name: 'Doyin', email: 'doyin@gmail.com', password: 'doyinreal', id: 2).save
        friend = Friendship.new(friend_id: 2).save
        expect(friend).to eq(false)
      end
    end
  
end

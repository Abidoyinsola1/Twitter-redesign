require 'rails_helper'

RSpec.describe Tweet, type: :model do
  context 'validation tests' do
    it 'ensures tweet presence' do
      new = Tweet.new(tweet: '').save
      expect(new).to eql(false)
    end

    it 'ensures presence of user id and content' do
      User.new(name: 'Doyin', email: 'doyin@gmail.com', password: 'doyinreal', id: 1).save
      tweet = Tweet.new(tweet: 'First Tweet').save
      expect(tweet).to eq(false)
    end
  end
end

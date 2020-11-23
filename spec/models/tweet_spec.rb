require 'rails_helper'

RSpec.describe Tweet, type: :model do
  context 'validation tests' do
    it 'ensures tweet presence' do
      new = Tweet.new(tweet: '', user_id: 1).save
      expect(new).to eql(false)
    end
    it 'should save successfully' do
      new = Tweet.new(tweet: 'Storybook is an open-source tool for developing UI', user_id: 1).save
      expect(new).to eql(false)
    end
  end
end

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TweetHelper. For example:
#
# describe TweetHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TweetsHelper, type: :helper do
  context 'when user is signed in' do
    it 'shows follow button' do
    end
    it 'shows unfollow button' do
    end
  end

  context 'when user is signed in' do
    it 'shows Edit Profile' do
    end
    it 'shows Log Out' do
    end
  end

  context 'when user is logged out' do
    it 'shows Sign In' do
    end
    it 'shows Sign Up' do
    end
  end
end

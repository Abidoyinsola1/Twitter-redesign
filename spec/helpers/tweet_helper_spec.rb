require 'rails_helper'

RSpec.describe TweetsHelper, type: :helper do
  include Devise::Test::ControllerHelpers

  describe TweetsHelper do
    describe 'follow_or_unfollow_button' do
      it 'is following' do
        expect(helper.follow_or_unfollow_button('Abiola')).to eq(nil)
      end
    end
  end
end

require 'rails_helper'

RSpec.describe TweetsController, type: :controller do
  include Devise::Test::ControllerHelpers

  describe 'it should redirect to login/signup path if user is not signed in' do
    subject { get :new }

    it { should redirect_to(new_user_session_path) }
  end

  describe 'when a user is logged in' do
    it 'returns a successful response after signing in' do
      user = User.create(name: 'First Name', username: 'first_name', email: 'first_name@what.com',
                         password: 'whatisit', password_confirmation: 'whatisit')
      sign_in user
      get :index

      assert_response :success
    end
  end

  describe 'creation' do
    it 'can be created' do
      Tweet.create(tweet: 'Test tweet')
    end

    it 'cannot be created' do
      Tweet.create(tweet: '')
    end
  end
end

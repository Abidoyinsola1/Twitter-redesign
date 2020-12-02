Rails.application.routes.draw do
  resources :frienship, only: %i[follow unfollow]

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :tweets, :except => [:edit, :destroy, :show]
  root 'tweets#index'
end

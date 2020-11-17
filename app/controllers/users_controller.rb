class UsersController < ApplicationController
    def home
        @user = User.all
    end
    
end

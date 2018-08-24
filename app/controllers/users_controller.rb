class UsersController < ApplicationController
    
    def index
        @users = User.all
        @house
    end

    def update
    end
    
  end
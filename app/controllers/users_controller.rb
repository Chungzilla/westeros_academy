class UsersController < ApplicationController
    
    def index
        @users = User.order('last_name ASC').all 
    end

    def update
        
    end
    
    def show
        @user = User.find(params[:id])
    end

  end
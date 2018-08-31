class UsersController < ApplicationController
    
    def index
        @users = User.all  
    end

    def update
        
    end
    
    def show
        @user = User.find(params[:id])
    end

  end
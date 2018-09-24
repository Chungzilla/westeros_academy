class HomeController < ApplicationController
    layout 'index'

    def index
        @users = User.order('last_name ASC').all 
    end

end
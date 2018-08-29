class StudentsController < ApplicationController
    
    def new
        @student = Student.new
    # method: get
    # action: index
    # template: users/new.html.erb
    end
 
    def edit
        @student = Student.find(params[:id])
        # template: users/edit.html.erb
    end
 
    def create
        @student = Student.new
        @student.build_user(user_params)
 
        # @student.build_user(first_name: params[:user][:first_name])
 
        if @student.save
            redirect_to @student
        else
            render 'new'
        end
    end
end
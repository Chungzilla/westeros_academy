class StudentsController < ApplicationController
    

    def index
        @students = Student.all
        
    end

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
 
    def show
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.new(student_params)
        @student.build_user(user_params)
 
        # @student.build_user(first_name: params[:user][:first_name])
 
        if @student.save
            redirect_to @student
        else
            render 'new'
        end
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :gender, :photo, :username, :email, :password, :house_id)
        end

        def student_params
            params.require(:student).permit(:major)
        end
end
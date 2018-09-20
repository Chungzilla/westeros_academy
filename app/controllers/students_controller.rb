class StudentsController < ApplicationController
   

    def index
        @students = Student.all
        # method: get
        # template: users/index.html.erb
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
        #Renders individual student
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

    def edit
        @student = Student.find(params[:id])
        # Show edit form
    end

    def update
        @student = Student.find(params[:id])
        if @student.user.update(user_params)
            redirect_to @student
        else
            render 'edit'
        end

    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :gender, :username, :email, :password, :house_id, :photo)
        end

end
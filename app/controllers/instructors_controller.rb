class InstructorsController < ApplicationController
    before_action :authenticate_user!

    def index
        @instructors = Instructor.all
        # method: get
        # template: users/index.html.erb
    end

    def new
        @instructor = Instructor.new
    # method: get
    # action: index
    # template: users/new.html.erb
    end
 
    def edit
        @instructor = Instructor.find(params[:id])
        # template: users/edit.html.erb
    end
 
    def show
        @instructor = Instructor.find(params[:id])
        #Renders individual instructor
        @course = params[:course_id]

    end

    def create
        @instructor = Instructor.new
        @instructor.build_user(user_params)
 
        # @instructor.build_user(first_name: params[:user][:first_name])
 
        if @instructor.save
            redirect_to @instructor
        else
            render 'new'
        end
    end

    def edit
        @instructor = Instructor.find(params[:id])
        # Show edit form
    end

    def update
        @instructor = Instructor.find(params[:id])
        if @instructor.user.update(user_params)
            redirect_to @instructor
        else
            render 'edit'
        end

    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        redirect_to instructors_path
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :gender, :username, :email, :password, :house_id, :photo)
        end

end
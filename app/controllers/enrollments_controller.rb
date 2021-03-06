class EnrollmentsController < ApplicationController
    before_action :authenticate_user!

    def index
        @students = Student.all
        @instructors = Instructor.all
    end

    def show
        @enrollment = Enrollment.find(params[:id])
    end
    
    def new
        @enrollment = Enrollment.new
        @course = params[:course_id]
    end

    def edit
        @enrollment = Enrollment.find(params[:id])
    end

    def create
        @enrollment = Enrollment.new(enrollment_params)

        if @enrollment.save
            redirect_to @enrollment.course
        else
            render 'new'
        end
    end

    def update
        @enrollment = Enrollment.find(params[:id])

        if @enrollment.update(enrollment_params)
            redirect_to @enrollment.course
        else
            render 'edit'
        end
    end

    def destroy
        @enrollment = Enrollment.find(params[:id])
        @enrollment.destroy
    end

    private 
    def enrollment_params
        params.require(:enrollment).permit(:user_id, :course_id)
    end

end
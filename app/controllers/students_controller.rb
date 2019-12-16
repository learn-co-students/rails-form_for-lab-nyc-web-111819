class StudentsController < ApplicationController
    def show
        @newstudent = Student.find(params['id'])
    end
    def new
        @student = Student.new
    end
    def create
        @student = Student.create(students_params['student'])
        redirect_to student_path(@student)
    end
    def edit
        @student = Student.find(students_params['id'])
    end
    def update
        @editedstudent = Student.update(params[:id], students_params['student'])
        redirect_to student_path(@editedstudent)
    end

    private
    def students_params
        params.permit('id',{'student' => ['first_name','last_name']})
    end
end
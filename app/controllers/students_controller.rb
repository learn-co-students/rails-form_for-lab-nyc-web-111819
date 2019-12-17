class StudentsController < ApplicationController

  def new
    @student = Student.new
    # render :new
  end

  def create
    # byebug
    student = Student.create(student_params)
    redirect_to student_path(student)
  end

  def edit
    @student = Student.find(params[:id])
    # render :edit
  end

  def update
    student = Student.update(student_params)
    redirect_to student_path(student)
  end

  def show
    @student = Student.find(params[:id])
    # render :show
  end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
  
end

class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
    # render :new
  end

  def create
    # byebug
    school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
    # render :edit
  end

  def update
    school_class = SchoolClass.update(school_class_params)
    redirect_to school_class_path(school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
    # render :show
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
  
end

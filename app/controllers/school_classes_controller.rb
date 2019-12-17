class SchoolClassesController < ApplicationController

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.create(schoolclass_params)
        redirect_to school_class_path(@schoolclass)
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(schoolclass_params)
        redirect_to school_class_path(@schoolclass)
    end

    private
    def schoolclass_params
        params.require(:school_class).permit(:title, :room_number)
    end

end

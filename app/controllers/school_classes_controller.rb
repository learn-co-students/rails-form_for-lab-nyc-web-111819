class SchoolClassesController < ApplicationController
    def show
        @sclass = SchoolClass.find(schoolclass_params['id'])
    end
    def new
        @schoolclass = SchoolClass.new
    end
    def create
        @newclass = SchoolClass.create(schoolclass_params['school_class'])
        redirect_to school_class_path(@newclass)
    end
    def edit
        @schoolclass = SchoolClass.find(schoolclass_params['id'])
    end
    def update
        @editedclass = SchoolClass.update(schoolclass_params['id'], schoolclass_params['school_class'])
        redirect_to school_class_path(@editedclass)
    end

    private
    def schoolclass_params
        params.permit('id',{'school_class' => ['title','room_number']})
    end
end

class Admin::MedicalDepartmentsController < ApplicationController
  def index
    @medical_departments = MedicalDepartment.all
    @medical_department = MedicalDepartment.new
   end

   def edit
     @medical_department = MedicalDepartment.find(params[:id])
   end

   def update
    medical_department = MedicalDepartment.find(params[:id])
    if medical_department.update(medical_department_params)
      redirect_to admin_medical_departments_path
    else
      render "edit"
    end
   end

   def create
    medical_department = MedicalDepartment.new(medical_department_params)
    medical_department.save
    redirect_back(fallback_location: root_path)
   end

   private
   def medical_department_params
     params.require(:medical_department).permit(:name)
   end
end

class MedicalDepartmentsController < ApplicationController
  def show
    @medical_department = MedicalDepartment.find(params[:id])
    # @medicals = @medical_department.medicals
    @hospitals = @medical_department.hospitals
  end

  def index
    @medical_departments = MedicalDepartment.all
  end
end

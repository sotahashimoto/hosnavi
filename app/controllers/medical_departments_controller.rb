class MedicalDepartmentsController < ApplicationController
  def show
    @medical_department = MedicalDepartment.find(params[:id])
    # @medicals = @medical_department.medicals
    @hospitals = @medical_department.hospitals
  end
end

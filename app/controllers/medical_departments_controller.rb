class MedicalDepartmentsController < ApplicationController
  before_action :today_events

  def show
    @medical_department = MedicalDepartment.find(params[:id])
    @hospitals = @medical_department.hospitals
  end

  def index
    @medical_departments = MedicalDepartment.all
  end
end

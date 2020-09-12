class HospitalsController < ApplicationController
  def index
    if params[:search].present?
      @hospitals = Hospital.search_address(params[:search]).page(params[:page]).per(5)
    else
      @hospitals = Hospital.all.page(params[:page]).per(5)
    end
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments.sort
    @consultation_times = @hospital.consultation_times
  end

  def search
    # @hospitals = Hospital.search_name_address(params[:search])
    @hospitals = MedicalDepartment.search_name_address(params[:search]).page(params[:page]).per(5)
    render "index"
  end
end

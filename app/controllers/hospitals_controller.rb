class HospitalsController < ApplicationController
  def index
    if params[:search].present?
      @hospitals = Hospital.search_address(params[:search])
    else
      @hospitals = Hospital.all
    end
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments.sort
    @consultation_times = @hospital.consultation_times
  end

  def search
    @hospitals = Hospital.search_name(params[:search])
    render "index"
  end
end

class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments.sort
    # @medicals = @hospital.medicals
    @consultation_times = @hospital.consultation_times
  end
end

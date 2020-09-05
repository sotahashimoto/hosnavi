class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medicals = @hospital.medicals
    @consultation_times = @hospital.consultation_times
  end
end

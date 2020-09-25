class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all.page(params[:page]).per(5)
    @medical_departments = MedicalDepartment.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments.sort
    @consultation_times = @hospital.consultation_times
  end

  def search
    latitude = params[:latitude]
    longitude = params[:longitude]
    # within = Geokitのメソッド(2km以内の病院を検索)
    @places = Hospital.all.within(2, origin: [latitude, longitude])
  end

  # def search
  #   @hospitals = Hospital.search(params).page(params[:page]).per(5)
  #   render "index"
  # end
end

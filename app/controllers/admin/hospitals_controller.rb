class Admin::HospitalsController < ApplicationController
  def new
    @hospital = Hospital.new
    1.times { @hospital.medicals.build }
  end

  def index
   @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    hospital = Hospital.find(params[:id])
    if hospital.update(hospital_params)
      redirect_back(fallback_location: root_path)
    else
      render "edit"
    end
  end

  def create
    p "^^^^^^^^^^^^^^^^^^^^^^"
    p hospital = Hospital.new(hospital_params)
    hospital.save
  	redirect_to admin_hospitals_path
  end

  private
  def hospital_params
    params.require(:hospital).permit(:name, :image, :postcode, :address, :phone_number, :feature, :short_message, medicals_attributes: [:medical_department_id])
  end
end
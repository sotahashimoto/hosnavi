class Admin::HospitalsController < ApplicationController
  def new
    @hospital = Hospital.new
    1.times { @hospital.medicals.build }
    1.times { @hospital.consultation_times.build }
  end

  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments.sort
    @consultation_times = @hospital.consultation_times
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    hospital = Hospital.find(params[:id])
    if hospital.update(hospital_params)
      redirect_to admin_hospitals_path
    else
      render "edit"
    end
  end

  def create
    hospital = Hospital.new(hospital_params)
    if hospital.save
      redirect_to admin_hospitals_path
    else
      render "new"
    end
  end

  def destroy
    hospital = Hospital.find(params[:id])
    hospital.destroy
    redirect_back(fallback_location: admin_hospitals_path)
  end

  private
  def hospital_params
    params.require(:hospital).permit(:name, :image, :postcode, :address, :phone_number, :feature, :short_message, :notices,
                                      medicals_attributes: [:medical_department_id],
                                      consultation_times_attributes: [:consultation_day_id, :start_hour, :start_minute, :finish_hour, :finish_minute])
  end
end
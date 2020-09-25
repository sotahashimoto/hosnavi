class HospitalFavoritesController < ApplicationController
  def index
    @hospitals = current_member.hospitals
    @hospitals = current_member.hospitals
    @medical_departments = MedicalDepartment.all
  end

  def create
    @favorite = current_member.hospital_favorites.create(hospital_id: params[:hospital_id])
  end

  def destroy
    @hospital = Hospital.find(params[:hospital_id])
    @favorite = current_member.hospital_favorites.find_by(hospital_id: @hospital.id)
    @favorite.destroy
  end
end

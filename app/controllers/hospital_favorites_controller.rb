class HospitalFavoritesController < ApplicationController
  def index
    @hospitals = current_member.hospitals
    p "3333333333333333333333333333"
    p @hospitals = current_member.hospitals
    p "3333333333333333333333333333"
    @medical_departments = MedicalDepartment.all
  end

  def create
    @favorite = current_member.hospital_favorites.create(hospital_id: params[:hospital_id])
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    @hospital = Hospital.find(params[:hospital_id])
    @favorite = current_member.hospital_favorites.find_by(hospital_id: @hospital.id)
    @favorite.destroy
    # redirect_back(fallback_location: root_path)
  end
end

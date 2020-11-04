class Admin::ConsultationDaysController < ApplicationController
  def index
    @consultation_days = ConsultationDay.all
    @consultation_day = ConsultationDay.new
  end

  def create
    consultation_day = ConsultationDay.new(consultation_day_params)
    consultation_day.save
    redirect_to admin_consultation_days_path
  end

  def destroy
    consultation_day = ConsultationDay.find(params[:id])
    consultation_day.destroy
    redirect_back(fallback_location: admin_hospitals_path)
  end

  private
  def consultation_day_params
    params.require(:consultation_day).permit(:is_sunday, :is_monday, :is_tuesday, :is_wednesday, :is_thursday, :is_friday, :is_saturday)
  end
end
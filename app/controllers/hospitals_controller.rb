class HospitalsController < ApplicationController
  before_action :today_events

  def index
    @hospitals = Hospital.left_joins(:comments, :medical_departments, :consultation_days, :hospital_favorites).all.page(params[:page]).per(5)
    #@hospitals_for_consultation = Hospital.left_joins(:consultation_days, :consultation_times).all.page(params[:page]).per(5)
    #@hospitals_for_comments = Hospital.left_joins(Comments.count().groupby(:hospital_id)).all.page(params[:page]).per(5)
    #@hospitals_for_fav = 
    @medical_departments = MedicalDepartment.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @medical_departments = @hospital.medical_departments.sort
    @consultation_times = @hospital.consultation_times
  end

  def search
    @hospitals = Hospital.search(params).page(params[:page]).per(5)
    render "index"
  end
end

class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
    @comment = Comment.new
    @comments = @hospital.comments
  end
end

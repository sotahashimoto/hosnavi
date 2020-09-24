class MembersController < ApplicationController
  before_action :authenticate_member!, only: [:showw, :edit]

  def show
    @events = current_member.events
    @hospital = current_member.hospital_favorites

  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    member = Member.find(params[:id])
    if member.update(member_params)
      redirect_to member_path(current_member)
    else
      render "edit"
    end
  end

  private
  def member_params
    params.require(:member).permit(:name, :image)
  end
end
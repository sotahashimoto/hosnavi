class MembersController < ApplicationController
  before_action :authenticate_member!, only: [:show, :edit]
  before_action :today_events

  def show
    @event = Event.new
    @events = current_member.events.all
    @hospital = current_member.hospital_favorites
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to member_path(current_member)
    else
      render "edit"
    end
  end

  private
  def member_params
    params.require(:member).permit(:nickname, :image)
  end
end
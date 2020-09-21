class MembersController < ApplicationController
  def show
    @events = current_member.events
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
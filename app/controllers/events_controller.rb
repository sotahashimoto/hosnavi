class EventsController < ApplicationController
  before_action :authenticate_member!, only: [:index, :edit]

  def index
    @events = current_member.events.all
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = current_member.events.new(event_memo)
    if @event.save
      redirect_to member_path(current_member), notice:"予定を登録しました"
    else
      @events = Event.all
      @hospital = current_member.hospital_favorites
      render "members/show"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_memo)
      redirect_to member_path, notice:"予定を変更しました"
    else
      render 'edit'
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to member_path, notice:"予定を削除しました"
  end

  private
  def event_memo
    params.require(:event).permit(:start_time,:title, :content,:member_id)
  end
end

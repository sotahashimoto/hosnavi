class EventsController < ApplicationController
  def new
    @events = current_member.events
  end

  def show
    @events = current_member.events
  end

  def index
    @events = current_member.events
  end

  def create
    p @event = current_member.events.new(event_memo)
    if @event.save
      redirect_to member_path(current_member)
    else
      redirect_to member_path(current_member)
    end
  end

  private
  def event_memo
    params.require(:event).permit(:start_time,:title, :content,:member_id)
  end
end

class EventsController < ApplicationController

  def index
    @events = current_member.events
  end

  def new
    @events = current_member.events
  end

  def create
    p @event = current_member.events.new(event_memo)
    if @event.save
      redirect_to member_events_path(current_member.id)
    else
      redirect_to new_member_event_path
    end
  end

  private
  def event_memo
    params.require(:event).permit(:start_time,:title, :content,:member_id)
  end






end

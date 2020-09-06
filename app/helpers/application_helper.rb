module ApplicationHelper
  def human_active_weekday(weedday)
    weedday ? "○" : "休"
  end
end

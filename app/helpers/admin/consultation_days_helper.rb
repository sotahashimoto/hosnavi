module Admin::ConsultationDaysHelper
  def admin_human_active_weekday(weedday)
    weedday ? "診療" : "休診"
  end
end

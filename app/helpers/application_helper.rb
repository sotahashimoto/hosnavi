module ApplicationHelper
  def human_active_weekday(weedday)
    weedday ? "○" : "休"
  end

  def month(m)
    m.to_s + '月'
  end

  def japanese_day(d)
    if d == 1
      '月曜日'
    elsif d == 2
      '火曜日'
    elsif d == 3
      '水曜日'
    elsif d == 4
      '木曜日'
    elsif d == 5
      '金曜日'
    elsif d == 6
      '土曜日'
    elsif d == 0
      '日曜日'
    end
  end
end

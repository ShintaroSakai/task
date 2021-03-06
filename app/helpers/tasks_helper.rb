# frozen_string_literal: true

module TasksHelper
  require 'date'

  def diff_date(deadline_date)
    today = Date.current
    diff = (deadline_date - today).to_i
    "あと#{diff}日"
  end

  def today
    today = Date.today
  end
end

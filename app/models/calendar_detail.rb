class CalendarDetail < ApplicationRecord
  belongs_to :calendar
  belongs_to :calendar_tag
end

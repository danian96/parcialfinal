class PonderedActivity < ApplicationRecord
  belongs_to :pondered_planner
  belongs_to :subject
end

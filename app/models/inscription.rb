class Inscription < ApplicationRecord
  belongs_to :student
  belongs_to :parallel
end

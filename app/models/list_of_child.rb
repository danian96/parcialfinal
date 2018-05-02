class ListOfChild < ApplicationRecord
  belongs_to :user
  belongs_to :student
end

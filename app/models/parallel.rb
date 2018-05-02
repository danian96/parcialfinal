class Parallel < ApplicationRecord
  belongs_to :grade
  belongs_to :user, :class_name => "User"
end

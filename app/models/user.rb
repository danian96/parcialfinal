class User < ApplicationRecord
  enum role: [:padre, :teacher, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :parallels, :class_name => 'Parallel', :foreign_key => 'user_id'

  validates :name, presence: true
  validates :email, uniqueness: true, email: true

  def set_default_role
    self.role ||= :padre
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

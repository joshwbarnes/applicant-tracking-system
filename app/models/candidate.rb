class Candidate < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :current_position, presence: true
  validates :email, presence: true
end

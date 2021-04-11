class Job < ApplicationRecord
  belongs_to :user
  has_many :candidates
  validates :title, presence: true
  validates :work_type, presence: true
  validates :company, presence: true

  include PgSearch::Model
  multisearchable against: [:job, :title]
end

class Company < ApplicationRecord
  has_many :jobs
  validates :name, presence: true

  include PgSearch::Model
  multisearchable against: [:company, :name]
end

class Company < ApplicationRecord
  has_many :jobs

  include PgSearch::Model
  multisearchable against: [:company, :name]
end

class Company < ApplicationRecord
  belongs_to :job

  include PgSearch::Model
  multisearchable against: [:company, :name]
end

class Travel < ApplicationRecord
  belongs_to :user
  has_many :travel_plans, -> { order(position: :asc)}

  validates :date, presence: true
end

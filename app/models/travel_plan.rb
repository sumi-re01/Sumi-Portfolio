class TravelPlan < ApplicationRecord
  belongs_to :travel
  # acts_as_list scope: :travel

  validates :plan, length:{maximum: 20}
end

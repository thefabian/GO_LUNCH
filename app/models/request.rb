class Request < ApplicationRecord
  belongs_to :user
  belongs_to :lunch

  validates :date, presence: true
  validates :location, presence: true
  validates :kind, presence: true, inclusion: { in: ["Delivery", "Restaurant", "Cafeteria"] }

end

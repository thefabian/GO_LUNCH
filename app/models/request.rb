class Request < ApplicationRecord
  belongs_to :user
  belongs_to :lunch, optional: true
  has_many :availabilities

  validates :location, presence: true
  validates :kind, presence: true, inclusion: { in: ["Delivery", "Restaurant", "Cafeteria"] }

  def find_matching_requests
    dates = availabilities.pluck(:date)
    self.class.joins(:availabilities).where("availabilities.date IN (?)", dates).where.not(id: id).distinct
  end
end

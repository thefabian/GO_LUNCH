class Request < ApplicationRecord
  belongs_to :user
  belongs_to :lunch, optional: true
  has_many :availabilities
  # has_one :lunch_as_first, class_name: 'Lunch', foreign_key: 'request_1_id'
  # has_one :lunch_as_second, class_name: 'Lunch', foreign_key: 'request_2_id'

  validates :location, presence: true
  validates :kind, presence: true, inclusion: { in: ["Delivery", "Restaurant", "Cafeteria"] }

  def find_matching_requests
    dates = availabilities.pluck(:date)
    some_requests = self.class.joins(:availabilities).where("availabilities.date IN (?)", dates).where.not(user: user).where(location: location).where(kind: kind).where(lunch_id: nil).distinct
    # some_requests.select { |request| request.lunch.nil? }
  end

  # def lunch
  #   lunch_as_first || lunch_as_second
  # end

  def matching_date(another_request)
    dates = availabilities.pluck(:date)
    another_request.availabilities.where(date: dates).first&.date
  end
end

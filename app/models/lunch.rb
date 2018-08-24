class Lunch < ApplicationRecord
  belongs_to :request_1, class_name: 'Request', foreign_key: 'request_1_id'
  belongs_to :request_2, class_name: 'Request', foreign_key: 'request_2_id'

  validates :date, presence: true
  validates :location, presence: true
  validates :kind, presence: true, inclusion: { in: ["Delivery", "Restaurant", "Cafeteria"] }

end

class Lunch < ApplicationRecord
  belongs_to :user_1, class_name: 'User', foreign_key: 'user_1_id'
  belongs_to :user_2, class_name: 'User', foreign_key: 'user_2_id'

  validates :date, presence: true
  validates :location, presence: true
  validates :kind, presence: true, inclusion: { in: ["Delivery", "Restaurant", "Cafeteria"] }

end

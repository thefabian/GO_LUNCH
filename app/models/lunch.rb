class Lunch < ApplicationRecord
  # belongs_to :request_1, class_name: 'Request', foreign_key: 'request_1_id'
  # belongs_to :request_2, class_name: 'Request', foreign_key: 'request_2_id'
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  def other_user(a_user)
    users.find {|user| user != a_user}
  end
end

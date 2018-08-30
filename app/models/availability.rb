class Availability < ApplicationRecord
  belongs_to :request, dependent: :destroy
end

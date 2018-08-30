class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :company, optional: true
  belongs_to :user
  belongs_to :department, optional: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job_title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end


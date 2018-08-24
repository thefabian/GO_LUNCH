class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :company, optional: true
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job_title, presence: true
  validates :department, presence: true, inclusion: { in: ["HUMAN RESOURCES","MARKETING/PROMOTION","PRODUCTION","SALES","CUSTOMER SERVICE SUPPORT","ACCOUNTING AND FINANCE","DISTRIBUTION","RESEARCH AND DEVELOPMENT","ADMINISTRATIVE AND MANAGEMENT","OPERATIONS","INFORMATION TECHNOLOGY SUPPORT","PURCHASING","LEGAL DEPARTMENT"] }
  validates :location, presence: true
  validates :description, presence: true
end

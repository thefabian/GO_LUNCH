class Company < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  has_one :location
  has_many :departments
  has_many :profiles

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :locations, presence: true
  # validates :departments, presence: true, inclusion: { in: ["HUMAN RESOURCES","MARKETING/PROMOTION","PRODUCTION","SALES","CUSTOMER SERVICE SUPPORT","ACCOUNTING AND FINANCE","DISTRIBUTION","RESEARCH AND DEVELOPMENT","ADMINISTRATIVE AND MANAGEMENT","OPERATIONS","INFORMATION TECHNOLOGY SUPPORT","PURCHASING","LEGAL DEPARTMENT"] }
  validates :email, presence: true, uniqueness: true
  # validates :employee_range, presence: true, inclusion: { in: ["1-50 employees", "51-200 employees", "201-1,000 employees", "1,001-5,000 employees", "5000+ employees"] }
end

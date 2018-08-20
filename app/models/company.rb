class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :locations, presence: true
  validates :departments, presence: true, inclusion: { in: ["HUMAN RESOURCES","MARKETING/PROMOTION","PRODUCTION","SALES","CUSTOMER SERVICE SUPPORT","ACCOUNTING AND FINANCE","DISTRIBUTION","RESEARCH AND DEVELOPMENT","ADMINISTRATIVE AND MANAGEMENT","OPERATIONS","INFORMATION TECHNOLOGY SUPPORT","PURCHASING","LEGAL DEPARTMENT"] }
  validates :email, presence: true, uniqueness: true
  validates :employee_range, presence: true, length: { minimum: 90 }

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :messages, through: :conversations
  has_many :requests
  has_many :lunches, through: :requests


  def next_lunch
    lunches.where('lunches.date >= ?', Time.zone.now).order(date: :asc).first
  end
end

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :birthday, presence: true
  validates :email, presence: true, email: true
  validates :leader, presence: true
  validates :city, presence: true
  validates :state, presence: true, length: { is: 2 }
  validates :leader_phone, presence: true
  #validates :password, confirmation: true
end

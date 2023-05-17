class User < ApplicationRecord

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence:true, confirmation: true
  validates :password_confirmation, presence:true, on: :create
  validates :age, presence: true, numericality: {greater_than: 10, less_than: 90}, on: :create

end

class User < ApplicationRecord
  has_secure_password
  has_many :weights
  has_many :glucoses
  has_many :meals
  validates :password, presence: true
end

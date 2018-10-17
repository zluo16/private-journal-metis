class User < ApplicationRecord
  validates :username, uniqueness: true
  has_many :journals
  has_secure_password
end

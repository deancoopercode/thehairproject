class User < ApplicationRecord
  has_secure_password
  has_many :styles
  has_many :comments
end

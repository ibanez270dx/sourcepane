class User < ApplicationRecord
  has_many :sources
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
  validates :password_digest, presence: true
  validates_confirmation_of :password

  has_secure_password
end

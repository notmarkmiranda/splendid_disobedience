class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  has_many :memberships
  has_many :pools, through: :memberships
end

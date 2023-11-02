class Membership < ApplicationRecord
  belongs_to :pool
  belongs_to :user

  validates :pool_id, uniqueness: {scope: :user_id}
  enum role: {member: 0, admin: 1, superadmin: 2}
  enum status: {pending: 0, accepted: 1, rejected: 2}
end

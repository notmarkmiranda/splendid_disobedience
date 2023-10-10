class Membership < ApplicationRecord
  belongs_to :pool
  belongs_to :user

  validates :pool_id, uniqueness: {scope: :user_id}
end

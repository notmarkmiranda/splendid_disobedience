class Pool < ApplicationRecord
  has_many :memberships
  enum status: {enrolling: 0, scoring: 1, finalized: 2}
end

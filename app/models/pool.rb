class Pool < ApplicationRecord
  has_many :memberships
  has_many :questions
  enum status: {enrolling: 0, scoring: 1, finalized: 2}

  def accepting_entries?
    true
  end
end

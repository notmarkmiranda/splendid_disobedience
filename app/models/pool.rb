class Pool < ApplicationRecord
  has_many :memberships
  has_many :questions
  enum status: {enrolling: 0, scoring: 1, finalized: 2}

  def questions?
    questions.any?
  end

  def accepting_questions?
    true
  end
end

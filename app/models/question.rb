# frozen_string_literal: true

# Question model. I'm not sure what kind of documentation is helpful here, but Rubocop seems to want me to write something.
class Question < ApplicationRecord
  belongs_to :pool
  has_many :options, dependent: :destroy

  validates :body, presence: true, uniqueness: {scope: :pool_id, case_sensitive: false}
  accepts_nested_attributes_for :options
end

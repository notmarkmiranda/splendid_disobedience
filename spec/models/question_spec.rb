# frozen_string_literal: true

require "rails_helper"

RSpec.describe Question, type: :model do
  describe "validations & relationships" do
    before { create(:question) }

    it { should belong_to :pool }
    it { should have_many :options }
    it { should validate_presence_of(:body) }
    it { should validate_uniqueness_of(:body).scoped_to(:pool_id).case_insensitive }
  end
end

require "rails_helper"

RSpec.describe Membership, type: :model do
  context "validations & relationships" do
    before { create(:membership) }

    it { should belong_to :user }
    it { should belong_to :pool }
    it { should validate_uniqueness_of(:pool_id).scoped_to(:user_id) }
  end
end

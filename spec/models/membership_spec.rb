require "rails_helper"

RSpec.describe Membership, type: :model do
  context "validations & relationships" do
    before { create(:membership) }
    let(:enum_vals) { {member: 0, admin: 1, superadmin: 2} }
    let(:status_vals) { {pending: 0, accepted: 1, rejected: 2} }

    it { should belong_to :user }
    it { should belong_to :pool }
    it { should validate_uniqueness_of(:pool_id).scoped_to(:user_id) }
    it { should define_enum_for(:role).with_values(enum_vals) }
    it { should define_enum_for(:status).with_values(status_vals) }
  end
end

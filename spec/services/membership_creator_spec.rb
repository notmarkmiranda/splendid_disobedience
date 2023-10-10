require "rails_helper"

RSpec.describe MembershipCreator do
  let(:pool) { create(:pool) }
  let(:user) { create(:user) }

  it "creates a membership" do
    expect { described_class.call(pool_id: pool.id, user_id: user.id, role: 2) }.to change(Pool, :count).by(1)
  end
  
  it "raises an error when one already exists" do
    create(:membership, pool: pool, user: user)
    expect do 
      described_class.call(pool_id: pool.id, user_id: user.id, role: 2) 
    end.to raise_error(ActiveRecord::RecordInvalid)
  end
end
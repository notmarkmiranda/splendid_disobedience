require "rails_helper"

RSpec.describe "Pool creation", type: :request do
  before { log_in }

  it "creates a pool and a membership" do
    pool_attributes = attributes_for(:pool)
    expect {
      post "/pools", params: {pool: pool_attributes}
    }.to change(Pool, :count).by(1)
      .and change(Membership, :count).by(1)
  end
end

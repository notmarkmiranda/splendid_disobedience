require "rails_helper"

RSpec.describe Pool, type: :model do
  let(:enum_vals) { {enrolling: 0, scoring: 1, finalized: 2} }

  it { should define_enum_for(:status).with_values(enum_vals) }
end

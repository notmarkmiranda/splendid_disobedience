# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Questions Create", type: :request do
  let(:pool) { create(:pool) }
  let(:question_params) {
    attributes_for(:question)
      .merge(
        {options_attributes: [attributes_for(:option), attributes_for(:option)]},
        {pool_id: pool.id}
      )
  }

  it "creates a question & options" do
    expect do
      post "/questions", params: {question: question_params}
    end.to change(Question, :count).by(1)
      .and change(Option, :count).by(2)
  end
end

# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Question Delete", type: :request do
  let!(:question) { create(:question_with_two_options) }

  it "deletes a question and its options" do
    delete "/questions/#{question.id}"

    expect(Question.count).to eq(0)
    expect(Option.count).to eq(0)
  end
end

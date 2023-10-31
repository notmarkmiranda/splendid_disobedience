# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Question Update", type: :request do
  let(:question) { create(:question_with_two_options) }

  it "updates a question" do
    question_params = {body: "oh hey", description: "hey oh"}

    expect do
      put "/questions/#{question.id}", params: { question: question_params }
      question.reload
    end.to change { question.body }
    .and change { question.description }
  end

  it "updates the options" do
    option_1 = question.options.first
    option_2 = question.options.last
    question_params = {options_attributes: [{ id: option_1.id, body: 'howdy' }, { id: option_2.id, body: 'yall' }]}

    expect do
      put "/questions/#{question.id}", params: { question: question_params }
      option_1.reload
      option_2.reload
    end.to change { option_1.body }
    .and change { option_2.body }
  end
end
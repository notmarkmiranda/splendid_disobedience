# frozen_string_literal: true

# Controller for CRUDing a question
class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question Added"
    else
      flash[:alert] = @question.errors.full_messages.join(", ")
    end
    redirect_to @question.pool
  end

  def destroy
    question = Question.find(params[:id])
    pool = question.pool
    question.destroy
    redirect_to pool
  end

  private

  def question_params
    params.require(:question).permit(
      :body,
      :description,
      :pool_id,
      options_attributes:
        [
          :body,
          :correct
        ]
    )
  end
end

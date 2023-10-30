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

  private

  def question_params
    params.require(:question).permit(
      :body,
      :description,
      :pool_id,
      options_attributes:
        %i[
          body
          correct
        ]
    )
  end
end

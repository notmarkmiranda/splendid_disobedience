# frozen_string_literal: true

class PoolsController < ApplicationController
  before_action :require_user, only: %i[new create]

  def show
    @pool = Pool.includes(questions: :options).find(params[:id])
    @question = @pool.questions.new

    2.times { @question.options.build }
  end

  def new
    @pool = current_user.pools.new
  end

  def create
    @pool = current_user.pools.new(pool_params)
    return unless @pool.save

    MembershipCreator.call(
      pool_id: @pool.id,
      user_id: current_user.id,
      role: 2,
      status: 1
    )
    redirect_to @pool
  end

  private

  def pool_params
    params.require(:pool).permit(:name, :description, :locked_at)
  end
end

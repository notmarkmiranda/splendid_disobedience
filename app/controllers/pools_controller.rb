class PoolsController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def show
    @pool = Pool.find(params[:id])
  end

  def new
    @pool = current_user.pools.new
  end

  def create
    @pool = current_user.pools.new(pool_params)
    if @pool.save
      MembershipCreator.call(pool_id: @pool.id, user_id: current_user.id, role: 2)
      redirect_to @pool
    end
  end

  private

  def pool_params
    params.require(:pool).permit(:name, :description, :locked_at)
  end
end

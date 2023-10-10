class PoolsController < ApplicationController
  def create
    # @pool = current_user.admin_pools.new(pool_params)
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

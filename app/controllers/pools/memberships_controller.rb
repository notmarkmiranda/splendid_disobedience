module Pools
  class MembershipsController < ApplicationController
    def index
      @pool = Pool.includes(:memberships).find(params[:pool_id])
    end

    def new
      @pool = Pool.includes(:memberships).find(params[:pool_id])
      @membership = @pool.memberships.new
      @membership.build_user
    end
  end
end
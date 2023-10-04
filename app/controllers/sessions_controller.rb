class SessionsController < ApplicationController
  before_action :redirect_user, only: [:new, :create]
  def new
  end

  def create
  end
end
class UserSessionsController < ApplicationController
  before_action :require_no_user, only: [:new, :create]
  before_action :require_user, only: [:destroy]

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_back_or_default root_path
    else
      render 'new'
  end

  def destroy
    current_user_session.destroy
    redirect_back_or_default new_user_session_path
  end
end

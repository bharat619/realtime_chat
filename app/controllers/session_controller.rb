class SessionController < ApplicationController
  before_action :user_logged_in_redirect, only: :login

  def login
  end

  def create_session
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'User logged in successfully'
      redirect_to root_path
    else
      flash.now[:error] = "Invalid credentials"
      render 'login'
    end
  end

  def destroy_session
    session[:user_id] = nil
    flash[:success] = 'You have logged out'
    redirect_to login_path
  end

  private

  def user_logged_in_redirect
    if logged_in?
      redirect_to root_path
    end
  end
end
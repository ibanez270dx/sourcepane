class SessionsController < ApplicationController
  def new
    redirect_to user_path(@user) if current_user
  end

  def create
    @user = User.find_by_email params[:user][:email]
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:error] = "Invalid username/password."
      render action: :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've been logged out. Bye!"
    redirect_to login_path
  end
end

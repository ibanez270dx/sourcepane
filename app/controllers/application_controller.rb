class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  private
    def require_user
      unless current_user
        flash[:error] = "You gotta be logged in, sorry pal."
        session[:user_id] = nil
        redirect_to login_path and return
      end
    end
end

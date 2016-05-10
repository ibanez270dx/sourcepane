class AuthorizationsController < ApplicationController
  before_action :require_user

  def index
  end

  def new

  end

  def create
    if request.referrer.match(/github|twitter/)
      Object.const_get($&.capitalize).authorize!(current_user, params)
    end
  end

  def destroy
  end
end

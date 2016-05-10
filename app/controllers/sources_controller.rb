class SourcesController < ApplicationController
  before_action :require_user

  def index
    @sources = current_user.sources.collect{ |x| x.type.downcase }
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

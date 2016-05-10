class ChannelController < ApplicationController
  before_action :require_user

  def index
    
  end

  def show
    @channel = current_user.channels.find_by_name params[:name]
  end
end

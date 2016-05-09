class UsersController < ApplicationController
  before_action :require_user
  before_action :set_user, except: [:index, :new, :create]

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
    @user = User.create user_params
  end

  def edit
  end

  def update
    @user.update_attributes user_params
  end

  def destroy
  end

  private
    def set_user
      @user = User.find params[:id]
    end

    def user_params
      params.require(:user).permit :name, :email, :password, :password_confirmation
    end
end

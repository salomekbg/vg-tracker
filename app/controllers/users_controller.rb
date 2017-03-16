class UsersController < ApplicationController
  before_action :require_login, only: [:index, :new, :show]

  def index
    @users = User.all
  end

  def new
    if session[:user_id]
      @user = User.find(session[:user_id])
      redirect_to @user
    else
      @user = User.new
    end
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email_address, :password, :password_confirmation)
  end
end

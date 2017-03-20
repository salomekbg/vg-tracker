class SessionsController < ApplicationController

  def new
    @error = ""
  end

  def create
    @error = ""
    @user = User.find_by_username(params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      @error = "Sorry, either your username or password is wrong or you don't have an account setup! "
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end

class PlatformsController < ApplicationController
  before_action :require_login

  def index
    @platforms = Platform.all
    render 'index'
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

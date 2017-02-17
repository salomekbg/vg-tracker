class GamesController < ApplicationController
  def index
    @games = Game.all
    render 'index'
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

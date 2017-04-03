class GamesController < ApplicationController
  before_action :require_login
  before_action :require_admin, only: [:new, :edit, :delete]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.delete
    @games = Game.all
    render :index
  end

  private

  def game_params
    params.require(:game).permit(:title, :year)
  end
end

class GameSetsController < ApplicationController
  def index
    render json: GameSet.all
  end

  def update
    @game_set = GameSet.find(params[:id])
    @game_set.update(game_set_params)
    render json: @game_set
  end

  private

  def game_set_params
    params.require(:game_set).permit(:name, :release_date)
  end
end

class GamesController < ApplicationController
  def about
  end

  def create
    game_params = {}
    params[:game].each do |key, value|
        game_params[key] = value
    end
    game = Game.new(game_params)
    game.user = current_user
    game.match = Match.last
    game.save
  end

end

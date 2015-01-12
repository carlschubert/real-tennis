class MatchController < ApplicationController

  def update
    match_params = params[:match][:winner]
    match = Match.last
    match.winner = match_params
    match.save
  end


  def create
    match = Match.new()
    match.user = current_user
    match.save
    if request.xhr?
      erb :match, layout: false
    else
      erb :match
    end

  def show
    @user = User.find(id)
    @games = @user.games
    @matches = @user.matches
    erb :scores
  end
end
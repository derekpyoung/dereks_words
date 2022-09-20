class GamesController < ApplicationController
  def create 
    @user_games = UserGame.new(
      
    )
  end 
end

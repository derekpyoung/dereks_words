class UserGamesController < ApplicationController
  def index 
    u = UserGame.all
  end 
end 
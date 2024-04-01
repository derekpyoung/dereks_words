class UserGamesController < ApplicationController

  # skip_before_action :verify_authenticity_token
  def index
    @u = UserGame.all
  end 

  def create()
    u = UserGame.new(
      attempts: params[:attempts].to_i,
      win: params[:win],
      # user_id: current_user.id,
      word: params[:word],
      score: params[:score]
    )
    if u.save 
      p "saved!"
    end 
  end 

  def show 
    @u = UserGame.find_by(id: params[:id])
  end 







 
end 
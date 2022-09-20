class UsersController < ApplicationController

  def create 
    u = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    u.save 
  end 

  def index
    @users = User.all 
  end 

  def show 
    @user = User.find_by(id: params[:id])
  end 

  def update 
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name 
    user.email = params[:email] || user.email 
    user.password_digest = params[:password_digest] || user.password_digest
    user.save 
  end 

  def destroy 
    user = User.find_by(id: params[:id])
    user.delete
  end 

end



## need to make games controlelr and user_games controller. when you start a new gae hte 
# users game controller to post request
#game gets created on new game click grabs random word and goes. 
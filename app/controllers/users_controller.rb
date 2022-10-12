class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create 
    u = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if u.save
      redirect_to "/login"
    end  
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




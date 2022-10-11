class SessionsController < ApplicationController
  def new 
    render template: 'sessions/new'
  end 

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      p "logged in"
      redirect_to "/users/#{user.id}"
    else
      redirect_to "/users/all"
      p "Not logged in"
    end
  end

  def destroy
    session[:user_id] = nil
    p "you have logged out"
    redirect_to "/login"
  end
end

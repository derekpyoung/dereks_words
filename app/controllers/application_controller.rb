class ApplicationController < ActionController::Base
  
 
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id] 
  # end 
  
  # helper_method :current_user 

  # def authenticate_user! 
  #   redirect_to '/login' unless current_user 
  # end 

  # def logged_in? 
  #   !!current_user
  # end 

  def home 
    render template: 'layouts/home'
  end 
 
  
end

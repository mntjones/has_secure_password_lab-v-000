class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def welcome
    if session[:user_id]
      render :welcome
    else
      redirect_to controller: 'sessions' action: 'new'
    end
  end
end

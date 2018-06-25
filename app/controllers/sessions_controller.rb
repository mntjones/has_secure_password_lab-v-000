class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else 
      redirect_to(controller: 'sessions', action: 'new')
    end 
  end 

  def destroy 
    session.delete :user_id
    redirect_to(controller: 'application', action: 'welcome')
  end
  
end

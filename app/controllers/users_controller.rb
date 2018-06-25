class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      
      redirect_to controller: 'application', action: 'welcome'
    else
      redirect_to controller: 'users', action: 'new'
    end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end

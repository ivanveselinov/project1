class SessionController < ApplicationController

  def new
  end

  def create
    #get users
    user = User.find_by :email => params[:email]
    #if password matches
    if user.present? && user.authenticate(params[:password])
    #remember users
    session[:user_id] = user.id
    #redirect .....
    redirect_to root_path
    #else back to login
  else
    redirect_to login_path
  end
end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  end

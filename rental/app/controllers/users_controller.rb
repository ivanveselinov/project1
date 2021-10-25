class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
  render :new
end
end

def edit
  @user = User.find params[:id]
end

def update
  users = User.find params[:id]
  users.update user_params
  redirect_to user_path
end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :phone, :mobile, :image)
  end
end

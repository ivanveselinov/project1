class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  def new
    @user = User.new
  end

 def create
  @user = User.new user_params
   if @user.save
        session[:user_id] = @user.id
        if params[:user][:image].present?
           req = Cloudinary::Uploader.upload params[:user][:image]
           @user.image = req["public_id"]
           @user.save
        end
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
  if params[:user][:image].present?
    req = Cloudinary::Uploader.upload params[:user][:image]
    users.image = req["public_id"]
    users.save
  end
  redirect_to user_path
 end

 private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :phone, :mobile, :image)
  end
end

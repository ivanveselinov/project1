class PropertiesController < ApplicationController
  # before_action :check_for_login, :except => :index
  # before_action :check_for_login, :except => :show
  def index #step 1
    @properties = Property.all
end

  def show #2
    @properties = Property.find params[:id]
  end

  def new #3 see form on new page
    @properties = Property.new
  end

  def create #4
    property = Property.create property_params
    @current_user.properties << property
    redirect_to root_path
  end

  def edit #5
    @properties = Property.find params[:id]
  end

  def update
    properties = Property.find params[:id]
    properties.update property_params
    redirect_to property_path
  end

  def destroy
   properties = Property.find params[:id]
   properties.destroy
   redirect_to root_path
  end

private
def property_params
params.require(:property).permit(:adress, :suburb, :postcode, :rooms, :livingrooms, :bathrooms, :toilets, :garage, :pspace, :rent, :photos, :galery, :bedrooms, :agent_ids => [])
end
end

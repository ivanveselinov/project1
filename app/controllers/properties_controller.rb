class PropertiesController < ApplicationController

  def index #step 1
    @message = ""
    @properties = Property.all
    @search = params[:search]
    if @search.present?
     @properties = Property.all.where(postcode: "#{@search}")
      if (@properties.length == 0 )
          @message = "No Results"
      end
    end
  end

  def show #2
    @properties = Property.find params[:id]
  end

  def new #3
    @properties = Property.new
  end

  def create #4
  property = Property.create property_params
  @current_user.properties << property
    if params[:property][:photos].present?
      req = Cloudinary::Uploader.upload params[:property][:photos]
      property.photos = req["public_id"]
      property.save
    end
  if params[:property][:images].present?
      params[:property][:images].each do |image|
      req = Cloudinary::Uploader.upload image
      property.images << req["public_id"]
      property.save
      end
      redirect_to root_path
    end
  end

  def edit #5
    @properties = Property.find params[:id]
  end

  def update #6
      properties = Property.find params[:id]
      properties.update property_params
      properties.update_attributes property_params
    if params[:property][:photos].present?
      req = Cloudinary::Uploader.upload params[:property][:photos]
      properties.photos = req["public_id"]
      properties.save
    end
    if params[:property][:images].present?
      properties.images = []
      params[:property][:images].each do |image|
      req = Cloudinary::Uploader.upload image
      properties.images << req["public_id"]
      properties.save
    end

  end
  redirect_to property_path
  end

  def destroy #7
   properties = Property.find params[:id]
   properties.destroy
   redirect_to user_path
  end

 private
 def property_params
  params.require(:property).permit(:adress, :suburb, :postcode, :rooms, :livingrooms, :bathrooms, :toilets, :garage, :pspace, :rent, :photos, :bedrooms, :availablitly, :agent_ids => [])
 end
end

class Api::ImagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @image = Image.new(image_params)
    if @image.save
      render json: @image
    else
    end
  end

  def show
   
  end

  private

  def image_params
    params.require(:image_set).permit(:url, :description)
  end
end

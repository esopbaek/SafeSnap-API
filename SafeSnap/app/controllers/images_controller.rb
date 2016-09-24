class Api::ImagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @patient = Patient.find(params[:patient_id])
    @image_sets = @patient.image_sets.find(params[:image_set_id])
    @image = @image_sets.images.new(image_params)
    if @image.save
      render json: @image
    else
    end
  end

  def show
   
  end

  private

  def image_params
    params.require(:image).permit(:url, :description)
  end
end
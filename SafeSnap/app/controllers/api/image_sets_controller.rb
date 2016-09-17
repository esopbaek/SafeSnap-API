class Api::ImageSetsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @image_set = ImageSet.new(image_set_params)
    if @image_set.save
      render json: @image_set
    else

    end    
  end

  def show
    @patient = Patient.find(params[:patient_id])
    @image_set = @patient.image_sets.find(params[:id])
    render json: @image_set
  end

  # def index
  #   @image_sets = ImageSet.all
  #   render json: @patients
  # end

  private

  def image_set_params
    params.require(:image_set).permit(:name, :description, :patient_id)
  end
end

class Api::PatientsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient
    else

    end    
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient
  end

  def index
    @patients = Patient.all
    render json: @patients
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name)
  end
end

class Api::PatientsController < ApplicationController
  def create
    @patient = Patient.new

    
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

class PatientsController < ApplicationController
  def create
    @patient = Patient.new

    render json: @patient
  end

  def index
    @patients = Patient.all
    
    render json: @patients
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email)
  end
end

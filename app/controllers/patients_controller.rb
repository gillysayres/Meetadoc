class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :destroy]

  def index
    @patients = Patient.all
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :birth_date, :cpf)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end

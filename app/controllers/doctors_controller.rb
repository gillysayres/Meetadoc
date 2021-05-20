class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show

  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :crm, :crm_uf)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end

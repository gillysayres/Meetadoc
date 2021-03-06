class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      render :new
    end
  end

  def destroy
    if @appointment.destroy
      # flash[:notice] = 'Doctor erased!'
    else
      flash[:notice] = 'You cannot erase a doctor with an appointment!'
    end
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:starts_at, :ends_at, :patient_id, :doctor_id)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end

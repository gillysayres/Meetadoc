class DashboardController < ApplicationController

  def home
    @doctors = Doctor.all
    @appointments_all = Appointment.all.count
    @appointments = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @appointment_by_doctor = Appointment.all.where("ends_at <= ? AND doctor_id = ?", DateTime.now, 9).count
    @unique_patients =  Appointment.distinct(:patient_id).where("ends_at <= ?", DateTime.now).size
    # @appointment = Appointment.select(:id).where(:ends_at < a).group(:ends_at)
    # @appointment = Appointment.select(:id).where("ends_at <= ?", DateTime.now)
  end
end

    # SELECT COUNT (ID) FROM appointments, where ends_at < DateTime.now AND id = ?
    # SELECT COUNT (ID) FROM appointments, where ends_at < DateTime.now, GROUP_BY ends_at
    # SELECT COUNT (patient_id) FROM appointments, where ends_at < DateTime.now, GROUP_BY patient_id
    # SELECT DISTINCT

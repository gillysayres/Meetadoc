class DashboardController < ApplicationController

  def home
    # @patients = Appointment.where
    @doctors = Doctor.all
    @appointments = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @unique_patients = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @unique_patients = Appointment.all.distinct("ends_at <= ? AND patients_id", DateTime.now).count
    #   SELECT DISTINCT
    @appointment_all = Appointment.all
    # SELECT COUNT (ID) FROM appointments, where ends_at < DateTime.now AND id = ?

    # SELECT COUNT (ID) FROM appointments, where ends_at < DateTime.now, GROUP_BY ends_at
    # SELECT COUNT (patient_id) FROM appointments, where ends_at < DateTime.now, GROUP_BY patient_id
    a = DateTime.now
    # @appointment = Appointment.select(:id).where(:ends_at < a).group(:ends_at)
    # @appointment = Appointment.select(:id).where("ends_at <= ?", DateTime.now)
    @appointments2 = Appointment.all.where("ends_at <= ? AND id = ?", DateTime.now, 2).count
    @appointment_by_doctor = Appointment.all.where("ends_at <= ? AND doctor_id = ?", DateTime.now, 9).count
    # @appointment2 = @appointment.count
  end
end

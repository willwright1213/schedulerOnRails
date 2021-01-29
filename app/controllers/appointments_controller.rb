class AppointmentsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @appointment = Appointment.new
    @appointment.name = params[:title]
    @appointment.date = params[:date]
    @appointment.start_time = params[:start_time]
    @appointment.end_time = params[:end_time]
    @appointment.schedule_id = current_user[:id]
    @appointment.save
  end

  def destroy
  end
end

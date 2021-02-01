class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new
    @appointment.title = params[:title].strip!
    @appointment.start = params[:start_date] + " " + params[:start_time]
    @appointment.end = params[:end_date] + " " + params[:end_time]
    @appointment.schedule_id = current_user[:id]
    respond_to do |format|
        format.js
      if @appointment.save
        redirect_to root_path
      else
        @titleError = ""
        @dateError  = ""
        if params[:title] == ""
          @titleError = "error"
        end
        if params[:start_date] == ""
          @dateError = "error"
        end
        format.json{render json: @appointment, status: :unprocessable_entity}
      end
    end
  end

  def destroy
  end

  def showAll
    @appointments = Appointment.where(schedule_id: current_user[:id])
    render json: @appointments
  end
end

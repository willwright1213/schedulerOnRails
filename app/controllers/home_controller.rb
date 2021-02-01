class HomeController < ApplicationController
  def index
    if user_signed_in?
      begin
        appointments = Appointment.find(current_user[:id])
      rescue ActiveRecord::RecordNotFound => e
        appointments = nil
      end
    end
  end
end


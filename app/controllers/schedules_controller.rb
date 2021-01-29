class SchedulesController < ApplicationController
    before_action :redirect_to_login
  def new
    render :layout => false
  end

  def create

  end

  def show
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  def redirect_to_login
    if !user_signed_in?
      rect_to '/login'
    end
  end



end

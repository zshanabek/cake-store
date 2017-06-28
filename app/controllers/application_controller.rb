class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def check_admin
    redirect_to root_url unless current_user && current_user.admin? 
  end
end

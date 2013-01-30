class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  #Authentication helper methods
  helper_method :current_user
  helper_method :authorize
  
  private
   def authorize
    unless current_user.admin?
      flash[:error] = "You aren't authorized to view that resource!"
      redirect_to root_url
      false
    end
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :authenticate_user!
  
  #Authentication helper methods
  helper_method :current_user
end

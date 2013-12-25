class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user
    @current_user ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
  end
  
  helper_method :current_user

end

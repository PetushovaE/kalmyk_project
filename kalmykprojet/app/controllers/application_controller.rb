class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    !!current_user
  end

  private
    	
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    
  helper_method :current_user, :logged_in?

  # def login(user)
  #   session[:user_id] = user.id
  # end

  def logout
    session.delete(:user_id)
    @current_user = nil
  end
		
end


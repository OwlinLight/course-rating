class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    private
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def current_user_id
        current_user.id
    end
  
    helper_method :current_user

    helper :klasses

end

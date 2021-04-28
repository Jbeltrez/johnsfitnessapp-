
class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    add_flash_types :info


    
    private 

    def require_login 
        if !session[:user_id]
            redirect_to root_path, info: "You must be logged in!"
        end
    end
    def current_user 
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end
end

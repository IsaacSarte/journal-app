class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |u|
          u.permit(:email, :language, :password, :password_confirmation)
        end
    end
    
    def after_sign_in_path_for(_resource)
        journals_path # your path
    end
end

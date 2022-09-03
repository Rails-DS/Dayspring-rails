class ApplicationController < ActionController::Base

# run configure_permitted_paramaters method if only recive devise controller communication 
before_action :configure_permitted_parameters, if: :devise_controller?


def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	devise_parameter_sanitizer.permit(:account_update, keys: [:name])
end

end

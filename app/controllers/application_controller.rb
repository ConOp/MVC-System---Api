class ApplicationController < ActionController::Base
before_action :authenticate_user!
 protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name,:user_ID, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:last_name, :email,:user_ID, :password, :current_password)}
          end

 def redirect_if_not_signed_in
   redirect_to root_path if !user_signed_in?
 end

 def redirect_if_signed_in
   redirect_to root_path if user_signed_in?
 end

end

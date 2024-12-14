class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :phone_number, :name, :address ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :phone_number, :name, :address ])
  end
end

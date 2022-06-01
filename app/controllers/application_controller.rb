class ApplicationController < ActionController::Base


  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
     public_items_path
  end

  def after_sign_out_path_for(resource)
     public_path
  end

  protected

  config.i18n.default_locale = :ja
  config.i18n.load_path += Dir[Rails.root.join('config/locales/*.yml').to_s]


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
  end




end

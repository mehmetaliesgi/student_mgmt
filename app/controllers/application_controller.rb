class ApplicationController < ActionController::Base
  before_action :print_display_message
  after_action :after_display_message
  before_action :configure_permitted_parameters, if: :devise_controller?

  def print_display_message
    puts "I am a inherited before action filter"
  end

  def after_display_message
    puts "I am a inherited after action filter"
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname])
  end
end

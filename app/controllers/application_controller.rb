class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

# 例外処理
unless Rails.env.development?
    rescue_from Exception,                      with: :render_500 
    rescue_from ActiveRecord::RecordNotFound,   with: :render_404
    rescue_from ActionController::RoutingError, with: :render_404
end


def render_404
  render 'error/404', status: :not_found
end

def render_500
  render 'error/500', status: :internal_server_error
end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

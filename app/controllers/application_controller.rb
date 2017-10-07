class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_params, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :birthdate])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :email,
                                                              :city, :photo])
  end

  def after_sign_in_path_for(resource)
    '/posts'# redirecionar para a timeline com os posts quando pronta
  end

  # def after_sign_up_path_for(resource)
  #   redirecionar para user profile edit
  # end
end

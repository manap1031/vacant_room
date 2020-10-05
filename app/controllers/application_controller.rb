class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :birth_day, :prefecture_id, :postal_code, :city, :town, :building, :phone_number, :gender])
  end
end

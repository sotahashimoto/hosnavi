class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def today_events
    @today_events = Event.where(start_time: Time.zone.now.all_day)
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname])
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_hospitals_path
    when Member
      root_path
    end
  end
end
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin

  def require_admin
    redirect_back(fallback_location: root_path, flash: {danger: "You don't have permission to do that."}) unless current_admin
  end

  def current_admin
    if session[:username]
      @current_admin ||= Admin.find_by(username: session[:username])
    end
    @current_admin
  end

end

class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_out?
  helper_method :is_admin?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_out?
    current_user.nil?
  end

  def is_admin?
    unless logged_out?
      current_user.admin
    end
  end

end

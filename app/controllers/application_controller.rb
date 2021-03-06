class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorize
  include ApplicationHelper
  helper_method :current_user


  
  protected
    def authorize
      unless User.find_by(id:session[:user_id])
        redirect_to login_url, notice: "You are not authorized to view this page"
      end
    end

end

class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
    #abort(current_user.to_json)
    if current_user.present?
      redirect_to admin_url
    
      #redirect_to login_url
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url,alert:"Invalid Email or Password"
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to login_url,alert:"Successfully Logged out"
  end
end

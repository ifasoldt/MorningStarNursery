class AdminSessionsController < ApplicationController

  def new
  end

  def create
    @admin = Admin.find_by(username: params[:username])
    if @admin
      if @admin.authenticate(params[:password])
        session[:username] = @admin.username
        redirect_to root_path
      else
        flash.alert = "Incorrect Password or Username"
        redirect_back fallback_location: root_path
      end
    else
      flash.alert = "Incorrect Password or Username"
      redirect_back fallback_location: root_path
    end
  end

  def destroy
    session[:username] = nil
    redirect_to root_path
  end
end

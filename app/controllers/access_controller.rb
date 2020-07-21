# frozen_string_literal: true

class AccessController < ApplicationController
  def new
    if session[:user_id]
      redirect_to admin_url, notice: "already logged on"
      return
    end
  end

  # this should actually be "post /login"
  def create
    user = User.find_by(name: params[:name])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to recruiter_url, notice: "Logged out"
  end
end

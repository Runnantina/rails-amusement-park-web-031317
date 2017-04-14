class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to users_path
    else
      redirect_to new_user_path
  end

  def edit
  end

end

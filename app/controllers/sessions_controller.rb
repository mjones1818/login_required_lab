class SessionsController < ApplicationController
  def hello
    if !current_user
      redirect_to login_path
    end
  end

  def new

  end

  def create
    if params && params[:name] != ""
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  def homepage
    render :template => 'homepage'
  end

  def current_user
    session[:user]
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  def homepage
    render :template => 'homepage'
  end

  def join
    render :template => 'join'
  end

  def setting
    render :template => 'setting'
  end

  def show
    render :template => 'show'
  end
end

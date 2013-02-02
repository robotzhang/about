#coding=utf-8
class UsersController < ApplicationController
  def login
    redirect_to dashboard_url
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user] = @user
      redirect_to dashboard_url, :notice => '欢迎！'
    else
      render :new
    end
  end

  def dashboard
    @company = Company.find_by_user_id(current_user.id)
  end
end

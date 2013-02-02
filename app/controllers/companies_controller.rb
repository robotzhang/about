class CompaniesController < ApplicationController
  def show
    @company = Company.find_by_domain(params[:domain], :first)
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      redirect_to dashboard_url
    else
      render :new
    end
  end

  def edit
    return redirect_to login_url(:url => edit_url) if current_user.blank?
  end

  def explore

  end

end

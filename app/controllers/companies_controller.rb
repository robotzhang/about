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
    @company = Company.find_by_domain(params[:domain], :first)
  end

  def update
    @company = Company.find_by_domain(params[:domain], :first)
    if @company.update_attributes(params[:company])
      redirect_to company_url(@company.domain)
    else
      render :action => :edit
    end
  end

  def explore
    @companies = Company.all
  end

end

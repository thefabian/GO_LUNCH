class CompaniesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.profile.user = current_user
    if @company.save
      redirect_to companies_path(@profile)
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :locations, :departments, :email, :employee, :photo)
  end
end



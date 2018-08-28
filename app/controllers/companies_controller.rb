class CompaniesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    Department.where(id: params[:company][:departments]).each do |department|
     @company.departments << department
    end

    if @company.save
      # current_user.profile.company = @company
      redirect_to companies_path(@profile)
    else
      render :new
    end
  end

  def edit
     @company = Company.find(params[:id])
   end

  def update
    @profile = Profile.find_by(user: current_user)
    @company = Company.find(params[:id])
    @company.update(company_params)
    Department.where(id: params[:company][:departments]).each do |department|
     @company.departments << department
    end
    if @company.save
     redirect_to  profile_path(@profile)
    else
     render :edit
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :locations, :email, :employee, :photo, :department_ids => [])
  end
end



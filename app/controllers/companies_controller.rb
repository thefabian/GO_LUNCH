class CompaniesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @company = Company.new
  end

  def create
    company_ids = company_params[:departments]
    params_wothout_dep_ids = company_params.dup.except(:departments)
    @company = Company.new(params_wothout_dep_ids)

    if @company.save
      company_ids.each do |dep_index|
        unless dep_index == ""
          name = Department.find(dep_index).department
          dep = Department.create(department: name, company: @company)
          @company.departments << dep unless @company.departments.include?(Department.find_by(department: name))
          @company.save
        end
      end
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

    company_ids = company_params[:departments]
    params_wothout_dep_ids = company_params.dup.except(:departments)

    # 1 build an array of names for the existing departments of @company
    # 2 add condition in the unless which does not enter the block if dep index is included in the

    if @company.update(params_wothout_dep_ids)
      company_ids.each do |dep_index|
        unless dep_index == ""
          name = Department.find(dep_index).department
          unless @company.departments.include?(Department.find_by(department: name))
          dep = Department.create(department: name, company: @company)
          @company.departments << dep
          @company.save
           end
        end
      end
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :locations, :email, :employee, :photo, :departments => [])
  end
end



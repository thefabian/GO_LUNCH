class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      redirect_to home_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :job_title, :department, :location, :description, :photo)
  end

end



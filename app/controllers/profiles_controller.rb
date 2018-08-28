class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    Profile.find(id: params[:profile][:departments]).each do |department|
     @profile.department
    end
    @profile.user = current_user
    @profile.email = current_user.email
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def show
    @profile = Profile.find_by(user: current_user)
  end

  def edit
     @profile = Profile.find_by(user: current_user)
   end

  def update
    @profile = Profile.find_by(user: current_user)
    @profile.update(profile_params)
    Profile.find(id: params[:profile][:department_id]).each do |department|
     @profile.department
    end
    if @profile.save
     redirect_to profile_path(@profile)
    else
     render :edit
    end
  end



  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :job_title, :location, :description, :photo, :user_id, :email, :photo_cache, :department_id)
  end

end



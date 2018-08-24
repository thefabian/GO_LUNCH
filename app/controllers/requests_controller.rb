class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    profile = Profile.find(current_user.id)
    authorize @request
    if @request.save
      params[:request][:date].each do |date|
        Availability.create(date: date, request: @request)
      end
      redirect_to profile_request_path(profile.id, @request.id)
    else
      redirect_to profile_path
    end
  end

  def show
    @request = Request.find(params[:id])
    authorize @request
  end

  private

  def request_params
    params.require(:request).permit(:location, :kind)
  end
end

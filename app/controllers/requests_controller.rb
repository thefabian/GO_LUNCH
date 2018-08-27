class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @profile = Profile.find_by(user: current_user)
    @request = Request.new
    @next_days = []
    counter = 0
    7.times do
      day = Date.tomorrow + counter
      unless day.saturday? || day.sunday?
        @next_days << day
      end
      counter += 1
    end
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    profile = Profile.find(current_user.id)

    @next_days = []
    counter = 0
    7.times do
      day = Date.tomorrow + counter
      unless day.saturday? || day.sunday?
        @next_days << day
      end
      counter += 1
    end

    authorize @request

    if @request.save
      params[:day].each do |date|
        Availability.create(date: date, request: @request)
      end
      @lunch = MatchRequestsService.new(@request).process
      if @lunch.nil?
        redirect_to profile_path(current_user.profile)
      else
        redirect_to lunch_path(@lunch)
      end
    else
      render :new
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


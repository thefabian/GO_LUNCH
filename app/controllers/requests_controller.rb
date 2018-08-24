class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      params[:request][:date].each do |date|
        Availability.create(date: date, request: @request)
      end
      redirect_to profile_path(@request.user_id)
    else
      redirect_to profile_path(@request.user_id)
    end
  end

  private

  def request_params
    params.require(:request).permit(:location, :kind)
  end
end

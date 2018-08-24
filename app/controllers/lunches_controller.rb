class LunchesController < ApplicationController
  def new
    @lunch = Lunch.new
  end

  def create
    @lunch = Lunch.new(lunch_params)
    @lunch.request_1 = request.current_user_id
    @lunch.request_2 = request.find_matching_requests
    if @lunch.save
      redirect_to lunch_path(@lunch)
    else
      render "lunches/show"
    end
  end

  private

  def lunch_params
    params.require(:lunch).permit(:date, :location, :kind)
  end
end

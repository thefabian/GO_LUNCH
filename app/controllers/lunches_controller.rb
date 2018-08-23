class LunchesController < ApplicationController
  def new
    @lunch = Lunch.new
  end

  def create
    @lunch = Lunch.new(request_params)
    @lunch.request.user = current_user
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

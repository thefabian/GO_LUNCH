class LunchesController < ApplicationController
  def show
    @lunch = Lunch.find(params[:id])
    authorize @lunch
  end
end



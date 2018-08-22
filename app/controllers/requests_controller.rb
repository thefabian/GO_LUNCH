class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      # redirect_to request_path(@request)
    else
      render "profiles/show"
    end
  end

  private

  def request_params
    params.require(:request).permit(:date, :location, :kind)
  end

end

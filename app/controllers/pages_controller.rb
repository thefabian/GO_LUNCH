class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :pricing]
  layout 'home'

  def home
  end

  def pricing
  end
end

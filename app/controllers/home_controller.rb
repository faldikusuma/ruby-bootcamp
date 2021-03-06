class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index ]
  def index
    @courses = Course.all.limit(3)
    @recents = Course.all.limit(3).order(created_at: :desc)
  end

end

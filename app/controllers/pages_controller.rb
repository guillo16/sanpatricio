class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :ib]

  def home
    @articles = Article.all
    @events = Event.all
  end

  def about
  end
end

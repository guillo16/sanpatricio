class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :ib]

  def home
    @articles = Article.all
    @events = Event.where("date >= ?", Time.current).order(date: :asc)
  end

  def about
  end
end

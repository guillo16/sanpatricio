class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about ib historia autoridades mision oferta_academica experiencia_educativa]

  def home
    @articles = Article.order(created_at: :desc)
    @events = Event.where("date >= ?", Time.current).order(date: :asc)
  end

  def ib; end

  def about; end

  def historia; end

  def autoridades; end

  def mision; end

  def oferta_academica; end

  def experiencia_educativa; end

end

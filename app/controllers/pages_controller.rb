class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about ib historia autoridades mision inicial primario secundario obras_teatro fiesta_colores salidas_educativas talleres clases_abiertas bicicleteadas]

  def home
    @articles = Article.order(created_at: :desc)
    @events = Event.where("date >= ?", Time.current).order(date: :asc)
  end

  def ib; end

  def about; end

  def historia; end

  def autoridades; end

  def mision; end

  def inicial; end

  def primario; end

  def secundario; end

  def obras_teatro; end

  def fiesta_colores; end

  def salidas_educativas; end

  def talleres; end

  def clases_abiertas; end

  def bicicleteadas; end

end

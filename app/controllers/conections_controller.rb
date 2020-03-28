class ConectionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @conections = Conection.all
  end

  def show
    @conection = Conection.find(paramas[:id])
  end

  def new
    @conection = Conection.new
  end

  def create
    @conection = Conection.new(conection_params)
    if @conection.save
      redirect_to root_path
      flash[:notice] = "Gracias por su mensaje, lo contactaremos pronto"
    else
      render :new
    end
  end

  private

  def conection_params
    params.require(:conection).permit(:name, :building, :email, :message)
  end
end

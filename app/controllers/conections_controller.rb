class ConectionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @conections = Conection.order(created_at: :desc)
  end

  def show
    @conection = Conection.find(params[:id])
  end

  def new
    @conection = Conection.new
  end

  def create
    @conection = Conection.new(conection_params)
    if @conection.save
      redirect_to root_path
      flash[:notice] = "Gracias por su mensaje, lo contactaremos pronto"
      if @conection.building == 'Jardines'
        @conection.update!(building: 'jardin@sanpatriciotucuman.edu.ar')
      elsif @conection.building == 'Primario'
        @conection.update!(building: 'primario@sanpatriciotucuman.edu.ar')
      elsif @conection.building == 'Secundario'
        @conection.update!(building: 'secundario@sanpatriciotucuman.edu.ar')
      else
        @conection.update(building: 'administracion@sanpatriciotucuman.edu.ar')
      end
      ConectionMailer.new_message(@conection).deliver_now
    else
      render :new
    end
  end

  def destroy
    @conection = Conection.find(params[:id])
    @conection.delete
    redirect_to conections_path
  end

  private

  def conection_params
    params.require(:conection).permit(:name, :building, :email, :message)
  end
end

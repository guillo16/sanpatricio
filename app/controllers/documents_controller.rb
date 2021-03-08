class DocumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_document, only: %w[show edit update destroy]

  def index
    if params["category"]
      @documents = Document.where(category: params["category"])
    else
      @documents = Document.all
    end
  end

  def show
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      flash[:notice] = "Creaste exitosamente el documento"
      redirect_to documents_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @document.update(document_params)
      flash[:notice] = "Actualizaste el documento"
      redirect_to documents_path
    else
      render :edit
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, :category, files: [])
  end
end

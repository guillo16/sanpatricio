class DocumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_document, only: %w[edit update destroy]

  def index
    @document_category = Document.all
    if params["category"]
      @documents = Document.where(category: params["category"]).page params[:page]
    else
      @documents = Document.order(created_at: :desc).page params[:page]
    end
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

class GalleriesController < ApplicationController
  before_action :set_galleries, only: [ :show, :edit, :destroy]

  def index
    @galleries = Gallery.all
  end

  def show
  end

  def create
    @article = Article.find(params[:article_id])
    @gallery = Gallery.new(gallery_params)
    @gallery.article = @article
    if @gallery.save
      redirect_to article_path(@article)
    else
      render 'article/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_galleries
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:title, photos: [])
  end
end

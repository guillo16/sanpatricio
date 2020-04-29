class GalleriesController < ApplicationController
  def create
    @divisions = Division.all
    @article = Article.find(params[:article_id])
    @gallery = Gallery.new(gallery_params)
    @gallery.article = @article
    if @gallery.save
      redirect_to article_path(@article)
    else
      render 'articles/show'
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:title, photos: [])
  end
end

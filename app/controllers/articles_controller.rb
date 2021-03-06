class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_articles, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.order(created_at: :desc).page params[:page]
    @divisions = Division.all
  end

  def show
    @divisions = Division.all
    @gallery = Gallery.new
  end

  def new
    if current_user.admin?
      @article = Article.new
    else
      flash[:notice] = "Accesso denegado"
      redirect_to root_path
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :content1, :content2, :content3, :photo, :category, :division_id, :url, images: [])
  end
end

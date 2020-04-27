class ArticlesController < ApplicationController
  before_action :set_articles, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.all
    if params["category"]
      @articles = Article.where(category: params["category"])
    elsif params["created_at"]
      @articles = Article.order(created_at: :desc)
    else
      @articles
    end
  end

  def show
  end

  def new
    @article = Article.new
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

  def destroy
    @article.delete
    redirect_to articles_path
  end

  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :content1, :content2, :content3, :photo, :category, :division_id)
  end
end

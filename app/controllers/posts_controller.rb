class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    if current_user.admin?
      @post = Post.new
    else
      flash[:notice] = "Accesso denegado"
      redirect_to root_path
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :photo, :content, :url, :category_id)
  end
end

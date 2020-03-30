class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @categories = Category.all.map { |c| [c.title, c.id] }
  end

  def create
    @post = Post.new(post_params)
    @post.category_id = params[:category_id]
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :photo)
  end
end

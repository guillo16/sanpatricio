class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.order(:email).page params[:page]
    @categories = Category.all
    @posts = Post.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.password = "sanpatricio"
    if @user.save
      flash[:notice] = "#{@user.email} ha sido creado."
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "se elimino el usuario #{@user.email}"
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :admin)
  end
end

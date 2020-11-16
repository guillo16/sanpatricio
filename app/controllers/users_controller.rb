class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.order(:email).page params[:page]
    @categories = Category.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "se elimino el usuario #{@user.email}"
    redirect_to user_path(current_user)
  end
end

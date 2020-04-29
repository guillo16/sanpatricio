class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.all
    @categories = Category.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end
end

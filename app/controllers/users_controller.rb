class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.all
    @categories = Category.all
  end
end

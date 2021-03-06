class DivisionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @division = Division.find(params[:id])
    @divisions = Division.all
    @articles = @division.articles.order(created_at: :desc)
  end
end

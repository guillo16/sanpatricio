class DivisionsController < ApplicationController
  def show
    @division = Division.find(params[:id])
    @divisions = Division.all
  end
end

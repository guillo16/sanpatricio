class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path
      flash[:notice] = "Gracias por su mensaje, lo contactaremos pronto"
    else
      render :new
    end
  end
end

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path
      flash[:notice] = "Thanks for your message, we will get back you soon"
    else
      render :new
    end
  end
end

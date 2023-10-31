class ConectionMailer < ApplicationMailer
  def new_conection
    @order = params[:order]
    mail(to: ENV["ADMIN_EMAIL"], subject: "Tienes una nueva orden!")
  end

  def new_message(conection)
    @building = conection.building
    @conection = conection
    if conection.file.attached?
      attachments['file.pdf'] = conection.file.download
    end
    mail(to: @building, subject: "Nuevo mensaje de la pagina web")
  end
end

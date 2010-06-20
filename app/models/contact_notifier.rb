class ContactNotifier < ActionMailer::Base

  def contact_notification(contact,msg)
    @recipients = "Ricar Veiculos <eduardozaghi@gmail.com>"
    #@from = "#{contact.name} <#{contact.email}>"
    #@from = "#{nome} <#{email}>"
    @subject = "[Ricar Veiculos Web Site] - Contato do Usuario"
    @body = {:msg => msg,:nome => contact.name, :email => contact.email, :telefone => contact.tel}
  end


end


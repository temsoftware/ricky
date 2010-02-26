class ContactNotifier < ActionMailer::Base

   validates_presence_of :email
   validates_presence_of :nometo


  def contact_notification(nome,email,telefone,msg)
    @recipients = "#{nome} <#{email}>"
    @from = "Eduardo Zaghi <eduardozaghi@gmail.com>"
    #@from = "#{nome} <#{email}>"
    @subject = "[Ricar Web Site] - Contato do Usuario"
    @body = {:msg => msg,:nome => nome, :email => email, :telefone => telefone}
  end


end


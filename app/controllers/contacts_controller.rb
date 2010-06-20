class ContactsController < ApplicationController

  include FaceboxRender

  skip_before_filter :authenticate

  layout "ricar"

  def index

    @stores = Store.all

  end

  def create

    @costumer = Costumer.new

    @costumer.name  = params[:nome_txt]
    @costumer.email = params[:email_txt]
    @costumer.tel   = params[:telefone_txt]
    @costumer.news  = params[:news] || 0
    @msg            = params[:msg_tx]

    if @costumer.valid?

      @costumer.save

      ContactNotifier.deliver_contact_notification(@costumer,@msg)

      flash[:notice] = "E-mail Enviado com Sucesso!."
      flash[:status] = "success"
    else
      flash[:notice] = "E-mail nao será enviado! Por favor verifique os seguintes campos:"
      flash[:status] = "error"
    end

    respond_to do |format|
     format.html
     format.js { render_to_facebox :partial => "show"}
    end
    #redirect_to :controller => "home", :action => "index"

  end

end


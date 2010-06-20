class AddressController < ApplicationController

  skip_before_filter :authenticate

  layout "ricar"

  def show

    @stores = Store.all

    @selected_store = Store.first

  end

end


class AddressController < ApplicationController

  skip_before_filter :authenticate

  layout "ricar"

  def show

    @stores = Store.all

    @selected_store = Store.find params[:id].to_i

    @map = GMap.new("map_div_id")
    @map.control_init(:large_map => true, :map_type => true)
    @map.center_zoom_init([@selected_store.latitude_longitude.split(",")[0],@selected_store.latitude_longitude.split(",")[1]], 16)

    marker = GMarker.new([@selected_store.latitude_longitude.split(",")[0],@selected_store.latitude_longitude.split(",")[1]],
      :title => "#{@selected_store.name}", :info_window => "#{@selected_store.name}: <br> Rua #{@selected_store.street}, #{@selected_store.number} - #{@selected_store.neighborhood} <br> #{@selected_store.city} - #{@selected_store.state}")
    @map.overlay_init(marker)

  end

end


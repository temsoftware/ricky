class PartnersController < ApplicationController
  layout "admin"

   active_scaffold :partner do |item|
    item.label = "Parceiros"
    item.columns = [:name, :data, :site]
    item.columns[:name].label  = "Nome"
    item.columns[:data].label = "Imagem"
    item.columns[:site].label  = "Site"

    item.actions.exclude :show
  end
end


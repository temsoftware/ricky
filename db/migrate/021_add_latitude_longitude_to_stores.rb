class AddLatitudeLongitudeToStores < ActiveRecord::Migration
  def self.up
     add_column :stores, :latitude_longitude, :string
  end

  def self.down
     remove_column :stores, :latitude_longitudes
  end
end


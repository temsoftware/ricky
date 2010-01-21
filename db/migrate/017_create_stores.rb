class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string      :name
      t.string      :street
      t.integer     :number
      t.string      :neighborhood
      t.string      :cep
      t.string      :city
      t.string      :state
      t.string      :telephone
      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end


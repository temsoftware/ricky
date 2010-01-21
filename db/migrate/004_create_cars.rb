class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.string     :name
      t.references :brand
      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE cars ADD CONSTRAINT fk_cars_brands FOREIGN KEY (brand_id) REFERENCES brands(id)"
  end

  def self.down
    drop_table :cars
  end
end

class Car < ActiveRecord::Base
  has_many   :vehicle
  belongs_to :brand

  validates_uniqueness_of :name, :case_sensitive => :false

  validates_presence_of :name
  validates_presence_of :brand
  
  def to_label
    "#{brand.name} #{name}"
  end
end

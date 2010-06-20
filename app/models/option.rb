class Option < ActiveRecord::Base
  has_many :options_vehicle
  has_many :vehicle, :through => :options_vehicle

  validates_presence_of :description
  validates_uniqueness_of :description, :case_sensitive => :false

  def to_label
    "#{description}"
  end
end

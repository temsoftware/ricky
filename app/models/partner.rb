class Partner < ActiveRecord::Base

validates_presence_of :name
validates_presence_of :image
validates_presence_of :site


  has_attached_file :data, :styles => {:original => "103x37>"},
    :url => "/uploads/partners/:class/:id/:id_:style.:extension",
    :path => ":rails_root/public/uploads/partners/:class/:id/:id_:style.:extension"

  def to_label
    data.url(:original)
  end

named_scope :parceiros,  {:conditions => ["site IS NOT NULL AND image IS NOT NULL"]}

end


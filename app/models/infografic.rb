# -*- encoding : utf-8 -*-
class Infografic < ActiveRecord::Base
  attr_accessible :comment, :history_date, :image, :rubric

  has_attached_file :image,
      	  :path => ":rails_root/public/assets/:class/:attachment/:id_partition/:style/:filename",
          :url => "/assets/:class/:attachment/:id_partition/:style/:filename"
          #:path => ":rails_root/system/:class/:attachment/:id_partition/:style/:filename",
          #:url => "/system/:class/:attachment/:id_partition/:style/:filename"
      #:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      #:url => "/system/:attachment/:id/:style/:filename"
end

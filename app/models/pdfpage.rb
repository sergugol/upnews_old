# -*- encoding : utf-8 -*-
class Pdfpage < ActiveRecord::Base
  attr_accessible :edition, :page_n, :image, :pdf_date, :pdf_n, :pdf_nn

	has_attached_file :image,
	  :path => ":rails_root/public/assets/:class/:attachment/:id_partition/:style/:filename",
                            :url => "/assets/:class/:attachment/:id_partition/:style/:filename"
	  #:path => ":rails_root/public/assets/:class/:attachment/:id/:style/:filename",
          #:url => "/system/:attachment/:id/:style/:filename"
end

# -*- encoding : utf-8 -*-
class Reclam < ActiveRecord::Base
	attr_accessible :image, :comment, :contract, :e_mail, :firm, :mode, :start_date, :stop_date, :timing, :web_site, :id, :created_at
	
	has_attached_file :image,
	         :path => ":rails_root/public/assets/:class/:id/:style/:filename",
				    :url => "/assets/:class/:id/:style/:filename"
	    
end

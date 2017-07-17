# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  def contacts
  	respond_to do |format|
  		format.html { render layout: "up_contacts" }
  		# 
  		#action: "contacts", layout: "up_contacts"
  	end
  end

    def upnewsinfo
  	respond_to do |format|
  		format.html { render layout: "upnewsinfo" }
  		# 
  		#action: "contacts", layout: "up_contacts"
  	end
  end

    def reclaminfo
  	respond_to do |format|
  		format.html { render layout: "reclaminfo" }
  		# 
  		#action: "contacts", layout: "up_contacts"
  	end
  end

end

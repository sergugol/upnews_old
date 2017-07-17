# -*- encoding : utf-8 -*-

require 'image_clearer'

class Article < ActiveRecord::Base
  include ImageClearer
  attr_accessible :anonce, :author, :content, :edition, :id, :pdf_file, :priority, :pub_time, :rubric, :title, :undertitle, :genre, :image

  has_attached_file :image,
      :path => ":rails_root/public/assets/:class/:id/:style/:filename",
      :url => "/assets/:class/:id/:style/:filename"
      # з’ясувати, який шлях потрібен? :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      #:url => "/system/attachment/:id/:style/:filename"

  clear_image_for :image
  
  searchable do
    text :title, :boost => 5.0 
    text :anonce, :content 
  end
  
end


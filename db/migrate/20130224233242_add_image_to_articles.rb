class AddImageToArticles < ActiveRecord::Migration
  def change
  	change_table :articles do |t|
  		t.string :image
  	end	
  end
end

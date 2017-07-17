class AddGenreToArticles < ActiveRecord::Migration
  def change
  	  	change_table :articles do |t|
  		t.string :genre
  	end	
  end
end

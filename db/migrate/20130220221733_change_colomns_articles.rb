class ChangeColomnsArticles < ActiveRecord::Migration
  def up
  	change_table :articles do |t|
  		t.remove :anonce, :rubric, :edition, :pdf_file
  		t.string :anonce, :rubric, :edition, :pdf_file
  	end
  end

  def down
  end
end

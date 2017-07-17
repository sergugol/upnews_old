class RemoveImageFromArticles < ActiveRecord::Migration
	change_table :articles do |t|
		t.remove :image
	end
end

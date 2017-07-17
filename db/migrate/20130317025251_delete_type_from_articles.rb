class DeleteTypeFromArticles < ActiveRecord::Migration
  def up
  	change_table :articles do |t|
  		t.remove :type
  	end
  end
end

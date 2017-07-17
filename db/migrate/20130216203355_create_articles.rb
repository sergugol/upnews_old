class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :rubric
      t.text :content
      t.text :undertitle
      t.string :anonce
      t.integer :pub_time
      t.string :author
      t.integer :edition
      t.integer :pdf_file
      t.integer :priority

      t.timestamps
    end
  end
end

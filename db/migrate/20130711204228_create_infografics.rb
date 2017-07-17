class CreateInfografics < ActiveRecord::Migration
  def change
    create_table :infografics do |t|
      t.string :rubric
      t.string :comment
      t.date :history_date
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end

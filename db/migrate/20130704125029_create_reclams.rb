class CreateReclams < ActiveRecord::Migration
  def change
    create_table :reclams do |t|
      t.string :contract
      t.string :firm
      t.string :web_site
      t.string :e_mail
      t.integer :timing
      t.datetime :start_date
      t.datetime :stop_date
      t.string :comment
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :mode

      t.timestamps
    end
  end
end

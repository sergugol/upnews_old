class CreatePdfpages < ActiveRecord::Migration
  def change
    create_table :pdfpages do |t|
      t.string :edition
      t.date :pdf_date
      t.integer :pdf_n
      t.integer :pdf_nn
      t.integer :page_n
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end

# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130713130451) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.text     "undertitle"
    t.integer  "pub_time"
    t.string   "author"
    t.integer  "priority"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "anonce"
    t.string   "rubric"
    t.string   "edition"
    t.string   "pdf_file"
    t.string   "genre"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "editors", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "name",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "editors", ["email"], :name => "index_editors_on_email", :unique => true
  add_index "editors", ["name"], :name => "index_editors_on_name", :unique => true
  add_index "editors", ["reset_password_token"], :name => "index_editors_on_reset_password_token", :unique => true

  create_table "infografics", :force => true do |t|
    t.string   "rubric"
    t.string   "comment"
    t.date     "history_date"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pdfpages", :force => true do |t|
    t.string   "edition"
    t.date     "pdf_date"
    t.integer  "pdf_n"
    t.integer  "pdf_nn"
    t.integer  "page_n"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "reclams", :force => true do |t|
    t.string   "contract"
    t.string   "firm"
    t.string   "web_site"
    t.string   "e_mail"
    t.integer  "timing"
    t.datetime "start_date"
    t.datetime "stop_date"
    t.string   "comment"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "mode"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end

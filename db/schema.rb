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

ActiveRecord::Schema.define(:version => 20130315034938) do

  create_table "leave_requests", :force => true do |t|
    t.integer  "leave_type_id"
    t.text     "comment"
    t.datetime "leave_from"
    t.datetime "leave_to"
    t.integer  "user_request_id"
    t.integer  "user_approve_id"
    t.boolean  "is_approved"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "leave_types", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "position_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sexes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "day_of_birth"
    t.float    "balance"
    t.integer  "user_rold_id"
    t.integer  "position_type_id"
    t.boolean  "admin"
    t.datetime "start_work_day"
    t.integer  "sex_id"
    t.string   "email"
    t.string   "remember_token"
    t.string   "identifier_url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end

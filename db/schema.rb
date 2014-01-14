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

ActiveRecord::Schema.define(:version => 20140109132454) do

  create_table "analyzes", :force => true do |t|
    t.boolean  "urine",          :default => false
    t.boolean  "feces",          :default => false
    t.boolean  "sperm",          :default => false
    t.boolean  "hiv",            :default => false
    t.boolean  "syphilis",       :default => false
    t.boolean  "stds",           :default => false
    t.boolean  "diabetes",       :default => false
    t.boolean  "blood_clotting", :default => false
    t.boolean  "biochemical",    :default => false
    t.boolean  "protein",        :default => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "conclusions", :force => true do |t|
    t.integer  "analysis_id"
    t.integer  "medical_card_id"
    t.boolean  "infected"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "medical_cards", :force => true do |t|
    t.date     "birthday"
    t.text     "birthplace"
    t.string   "sex"
    t.text     "diagnosis"
    t.text     "medicament"
    t.text     "patient_conditions"
    t.text     "treatment_status"
    t.boolean  "hospitalization"
    t.integer  "blood_groop"
    t.boolean  "temporary_incapacitated"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "user_id"
    t.string   "image"
  end

  create_table "microposts", :force => true do |t|
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end

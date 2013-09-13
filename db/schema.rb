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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130913093938) do

  create_table "appearance_clarities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appearance_colour_details", force: true do |t|
    t.string   "name"
    t.integer  "appearance_colour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appearance_colours", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appearance_intensities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conclusion_prices", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conclusion_qualities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conclusion_readinesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nose_conditions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nose_developments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nose_intensities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_acidities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_alcohols", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_bodies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_finishes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_flavintensities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_sweetnesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palate_tannins", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "wines", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "vintage"
    t.string   "grapes"
    t.float    "alcohol"
    t.string   "producer"
    t.integer  "country_id"
    t.string   "region"
    t.integer  "temperature"
    t.float    "price"
    t.integer  "appearance_colour_id"
    t.integer  "appearance_colour_detail_id"
    t.text     "appearance_observation"
    t.integer  "appearance_clarity_id"
    t.integer  "appearance_intensity_id"
    t.integer  "nose_condition_id"
    t.integer  "nose_intensity_id"
    t.text     "nose_aroma"
    t.integer  "nose_development_id"
    t.integer  "palate_sweetness_id"
    t.integer  "palate_acidity_id"
    t.integer  "palate_tannin_id"
    t.integer  "palate_alcohol_id"
    t.integer  "palate_body_id"
    t.integer  "palate_flavintensity_id"
    t.text     "palate_flavchar"
    t.text     "palate_observation"
    t.integer  "palate_finish_id"
    t.integer  "conclusion_quality_id"
    t.text     "conclusion_quality_reason"
    t.integer  "conclusion_readiness_id"
    t.text     "conclusion_readiness_reason"
    t.text     "conclusion_details"
    t.integer  "conclusion_price_id"
    t.text     "palate_tannin_nature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  

end

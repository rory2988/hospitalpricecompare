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

ActiveRecord::Schema.define(version: 20140610164435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: true do |t|
    t.integer "hospital_id"
    t.integer "user_id"
  end

  create_table "hospitals", force: true do |t|
    t.text   "provider_name"
    t.text   "provider_street_address"
    t.string "provider_city"
    t.string "provider_state"
    t.string "provider_zip_code"
  end

  create_table "inputs", force: true do |t|
    t.text "drg_definition"
    t.text "provider_id"
    t.text "provider_name"
    t.text "provider_street_address"
    t.text "provider_city"
    t.text "provider_state"
    t.text "provider_zip_code"
    t.text "hospital_referral_region_hrr_description"
    t.text "total_discharges"
    t.text "average_covered_charges"
    t.text "average_total_payments"
    t.text "average_medicare_payments"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.date   "dob"
    t.string "gender"
    t.string "email"
    t.string "password_digest"
  end

end

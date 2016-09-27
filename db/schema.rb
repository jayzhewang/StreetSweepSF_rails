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

ActiveRecord::Schema.define(version: 20160927174530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schedules", force: :cascade do |t|
    t.integer "CNN"
    t.string  "WEEKDAY"
    t.string  "BLOCKSIDE"
    t.integer "BLOCKSWEEP"
    t.string  "CNNRIGHTLE"
    t.string  "CORRIDOR"
    t.string  "FROMHOUR"
    t.string  "TOHOUR"
    t.string  "HOLIDAYS"
    t.string  "WEEK1OFMON"
    t.string  "WEEK2OFMON"
    t.string  "WEEK3OFMON"
    t.string  "WEEK4OFMON"
    t.string  "WEEK5OFMON"
    t.integer "LF_FADD"
    t.integer "LF_TOADD"
    t.integer "RF_TOADD"
    t.integer "RF_FADD"
    t.string  "STREETNAME"
    t.integer "ZIP_CODE"
    t.string  "NHOOD"
    t.string  "DISTRICT"
  end

  add_index "schedules", ["STREETNAME"], name: "index_schedules_on_STREETNAME", using: :btree

end

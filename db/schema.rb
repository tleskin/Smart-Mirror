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

ActiveRecord::Schema.define(version: 20170206145848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "displays", force: :cascade do |t|
    t.string   "box1"
    t.string   "box2"
    t.string   "box3"
    t.string   "box4"
    t.string   "box5"
    t.string   "box6"
    t.string   "box7"
    t.string   "box8"
    t.string   "box9"
    t.string   "box10"
    t.string   "box11"
    t.string   "box12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "box13"
    t.string   "box14"
    t.string   "box15"
  end

  create_table "google_tokens", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 20170317110120) do

  create_table "carafes", force: :cascade do |t|
    t.string  "name"
    t.float   "max_volume"
    t.float   "current_volume"
    t.integer "event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "street_1"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "postal_code"
  end

end

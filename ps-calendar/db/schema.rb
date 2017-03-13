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

ActiveRecord::Schema.define(version: 20170313174849) do

  create_table "cohorts", force: :cascade do |t|
    t.string   "title"
    t.integer  "batch_number"
    t.string   "instructor"
    t.date     "day_1"
    t.date     "day_2"
    t.date     "day_3"
    t.date     "day_4"
    t.date     "day_5"
    t.date     "day_6"
    t.date     "day_7"
    t.date     "day_8"
    t.date     "day_9"
    t.date     "day_10"
    t.date     "day_11"
    t.date     "day_12"
    t.date     "day_13"
    t.date     "day_14"
    t.date     "day_15"
    t.date     "day_16"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "makeups", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_cohort"
    t.string   "clicked_cohort"
    t.string   "clicked_day"
  end

end

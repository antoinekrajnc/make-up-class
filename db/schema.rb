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

ActiveRecord::Schema.define(version: 20170316222521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "title"
    t.integer  "batch_number"
    t.string   "instructor"
    t.date     "week_1A"
    t.date     "week_1B"
    t.date     "week_2A"
    t.date     "week_2B"
    t.date     "week_3A"
    t.date     "week_3B"
    t.date     "week_4A"
    t.date     "week_4B"
    t.date     "week_5A"
    t.date     "week_5B"
    t.date     "week_6A"
    t.date     "week_6B"
    t.date     "week_7A"
    t.date     "week_7B"
    t.date     "week_8A"
    t.date     "week_8B"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "makeups_day_1"
    t.integer  "makeups_day_2"
    t.integer  "makeups_day_3"
    t.integer  "makeups_day_4"
    t.integer  "makeups_day_5"
    t.integer  "makeups_day_6"
    t.integer  "makeups_day_7"
    t.integer  "makeups_day_8"
    t.integer  "makeups_day_9"
    t.integer  "makeups_day_10"
    t.integer  "makeups_day_11"
    t.integer  "makeups_day_12"
    t.integer  "makeups_day_13"
    t.integer  "makeups_day_14"
    t.integer  "makeups_day_15"
    t.integer  "makeups_day_16"
  end

  create_table "makeups", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_cohort"
    t.string   "clicked_cohort"
    t.string   "clicked_day"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_cohort"
    t.string   "user_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end

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

ActiveRecord::Schema.define(version: 20170408215410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_workshops", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "workshop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_user_workshops_on_user_id", using: :btree
    t.index ["workshop_id"], name: "index_user_workshops_on_workshop_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",         limit: 255, null: false
    t.string   "last_name",    limit: 255, null: false
    t.date     "birthday",                 null: false
    t.string   "email",        limit: 255, null: false
    t.string   "leader",       limit: 255, null: false
    t.string   "city",         limit: 255, null: false
    t.string   "state",        limit: 2,   null: false
    t.string   "leader_phone", limit: 12,  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["city"], name: "index_users_on_city", using: :btree
    t.index ["email"], name: "index_users_on_email", using: :btree
  end

  create_table "workshops", force: :cascade do |t|
    t.string   "name"
    t.time     "day"
    t.time     "hour"
    t.integer  "vacancies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_workshops", "users"
  add_foreign_key "user_workshops", "workshops"
end

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

ActiveRecord::Schema.define(version: 20170610170247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "todos", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "note"
    t.date "due_date"
    t.date "completed_on"
    t.integer "repeat"
    t.boolean "urgent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "due_date"], name: "index_todos_on_user_id_and_due_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 128, null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end

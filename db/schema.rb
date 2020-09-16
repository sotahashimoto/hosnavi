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

ActiveRecord::Schema.define(version: 2020_09_14_034211) do

  create_table "comments", force: :cascade do |t|
    t.integer "member_id"
    t.integer "hospital_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultation_days", force: :cascade do |t|
    t.boolean "is_sunday", default: true
    t.boolean "is_monday", default: true
    t.boolean "is_tuesday", default: true
    t.boolean "is_wednesday", default: true
    t.boolean "is_thursday", default: true
    t.boolean "is_friday", default: true
    t.boolean "is_saturday", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultation_times", force: :cascade do |t|
    t.integer "consultation_day_id"
    t.integer "hospital_id"
    t.integer "start_hour"
    t.integer "start_minute"
    t.integer "finish_hour"
    t.integer "finish_minute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "member_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospital_favorites", force: :cascade do |t|
    t.integer "member_id"
    t.integer "hospital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "postcode"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.text "feature"
    t.text "short_message"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicals", force: :cascade do |t|
    t.integer "hospital_id"
    t.integer "medical_department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "nickname"
    t.boolean "admin_flg", default: false
    t.string "image_id"
    t.string "postcode"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

end

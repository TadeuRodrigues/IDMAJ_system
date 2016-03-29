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

ActiveRecord::Schema.define(version: 20160329183113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_of_students", force: :cascade do |t|
    t.string   "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_of_weeks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "type_of_class_id"
    t.integer  "age_of_student_id"
    t.time     "time_in"
    t.time     "time_out"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "schedules", ["age_of_student_id"], name: "index_schedules_on_age_of_student_id", using: :btree
  add_index "schedules", ["teacher_id"], name: "index_schedules_on_teacher_id", using: :btree
  add_index "schedules", ["type_of_class_id"], name: "index_schedules_on_type_of_class_id", using: :btree

  create_table "student_levels", force: :cascade do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "CIN"
    t.string   "email"
    t.integer  "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teachers", ["phone_id"], name: "index_teachers_on_phone_id", using: :btree

  create_table "type_of_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "schedules", "age_of_students"
  add_foreign_key "schedules", "teachers"
  add_foreign_key "schedules", "type_of_classes"
  add_foreign_key "teachers", "phones"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_04_025619) do
  create_table "classes", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_classes_on_teacher_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.integer "class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_events_on_class_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_students_on_group_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "score"
    t.text "comment"
    t.boolean "submitted"
    t.integer "event_id", null: false
    t.integer "audience_id", null: false
    t.integer "presenter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["audience_id"], name: "index_surveys_on_audience_id"
    t.index ["event_id"], name: "index_surveys_on_event_id"
    t.index ["presenter_id"], name: "index_surveys_on_presenter_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.integer "student_id"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_users_on_student_id"
    t.index ["teacher_id"], name: "index_users_on_teacher_id"
  end

  add_foreign_key "classes", "teachers"
  add_foreign_key "events", "classes"
  add_foreign_key "students", "groups"
  add_foreign_key "surveys", "audiences"
  add_foreign_key "surveys", "events"
  add_foreign_key "surveys", "presenters"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_26_222356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses_units", id: false, force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "unit_id", null: false
    t.index ["course_id", "unit_id"], name: "index_courses_units_on_course_id_and_unit_id"
    t.index ["unit_id", "course_id"], name: "index_courses_units_on_unit_id_and_course_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "lesson_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lessons_units", id: false, force: :cascade do |t|
    t.bigint "unit_id", null: false
    t.bigint "lesson_id", null: false
    t.index ["lesson_id", "unit_id"], name: "index_lessons_units_on_lesson_id_and_unit_id"
    t.index ["unit_id", "lesson_id"], name: "index_lessons_units_on_unit_id_and_lesson_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source_title"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lesson_id"
    t.index ["lesson_id"], name: "index_sources_on_lesson_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "unit_name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

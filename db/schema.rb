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

ActiveRecord::Schema.define(version: 20170728220324) do

  create_table "assignments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "objective_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["objective_id"], name: "index_assignments_on_objective_id"
    t.index ["student_id"], name: "index_assignments_on_student_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_items", force: :cascade do |t|
    t.date "day", null: false
    t.time "time", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_schedule_items_on_subject_id"
  end

  create_table "scores", force: :cascade do |t|
    t.float "value"
    t.integer "assignment_id"
    t.integer "schedule_item_id"
    t.index ["assignment_id"], name: "index_scores_on_assignment_id"
    t.index ["schedule_item_id"], name: "index_scores_on_schedule_item_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

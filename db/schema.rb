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

ActiveRecord::Schema.define(version: 2021_07_15_180800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workout_equipments", force: :cascade do |t|
    t.bigint "workout_id", null: false
    t.bigint "equipment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_id"], name: "index_workout_equipments_on_equipment_id"
    t.index ["workout_id"], name: "index_workout_equipments_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sport_id", null: false
    t.index ["sport_id"], name: "index_workouts_on_sport_id"
  end

  add_foreign_key "workout_equipments", "equipment"
  add_foreign_key "workout_equipments", "workouts"
  add_foreign_key "workouts", "sports"
end

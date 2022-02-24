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

ActiveRecord::Schema.define(version: 2022_02_24_123440) do

  create_table "records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "kt", null: false
    t.integer "pulse", null: false
    t.integer "systolic", null: false
    t.integer "diastolic", null: false
    t.float "bw", null: false
    t.boolean "palpitation", default: false, null: false
    t.boolean "suffocation", default: false, null: false
    t.boolean "swelling", default: false, null: false
    t.boolean "fatigue", default: false, null: false
    t.datetime "start_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

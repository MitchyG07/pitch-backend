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

ActiveRecord::Schema.define(version: 2021_03_09_181059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chord_games", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chord_leaderboards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chord_game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chord_game_id"], name: "index_chord_leaderboards_on_chord_game_id"
    t.index ["user_id"], name: "index_chord_leaderboards_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "interval_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interval_id"], name: "index_experiences_on_interval_id"
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "interval_games", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "intervals", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "perfect_games", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "perfect_leaderboards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "perfect_game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["perfect_game_id"], name: "index_perfect_leaderboards_on_perfect_game_id"
    t.index ["user_id"], name: "index_perfect_leaderboards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_points"
  end

  add_foreign_key "chord_leaderboards", "chord_games"
  add_foreign_key "chord_leaderboards", "users"
  add_foreign_key "perfect_leaderboards", "perfect_games"
  add_foreign_key "perfect_leaderboards", "users"
end

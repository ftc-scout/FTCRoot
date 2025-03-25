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

ActiveRecord::Schema.define(version: 2025_03_25_200646) do

  create_table "event_migrations", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "migration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", charset: "utf8mb3", force: :cascade do |t|
    t.integer "region_id"
    t.string "name"
    t.string "date"
    t.string "ftcmatchcode"
    t.text "description"
    t.string "location"
    t.string "competitiontype"
    t.text "data_competition"
    t.boolean "advanceddata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "data_stats"
    t.string "data_highscore"
    t.boolean "advancedstats"
    t.text "data_raw"
    t.boolean "advancedraw"
    t.index ["region_id"], name: "index_events_on_region_id"
  end

  create_table "regions", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.text "website"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_assets", charset: "utf8mb3", force: :cascade do |t|
    t.integer "team_id"
    t.string "content"
    t.string "ctype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_assets_on_team_id"
  end

  create_table "teams", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.float "location_lat"
    t.float "location_long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "website"
    t.string "contact"
    t.text "data_competitions"
    t.text "blurb"
    t.string "data_strong"
    t.string "data_rootrank"
    t.string "data_rootscore"
    t.string "contact_email"
    t.string "contact_twitter"
    t.string "data_opr"
    t.string "data_oprauto"
    t.string "data_oprtele"
    t.string "data_oprend"
    t.string "contact_youtube"
    t.string "contact_facebook"
  end

end

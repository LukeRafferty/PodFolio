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

ActiveRecord::Schema.define(version: 20170807204741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "podcasts", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "buzzscore"
    t.integer  "audiosearch_id"
  end

  create_table "selected_podcasts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "podcast_id"
    t.index ["podcast_id"], name: "index_selected_podcasts_on_podcast_id", using: :btree
    t.index ["user_id"], name: "index_selected_podcasts_on_user_id", using: :btree
  end

  create_table "user_podcast_lists", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "podcast_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["podcast_id"], name: "index_user_podcast_lists_on_podcast_id", using: :btree
    t.index ["user_id"], name: "index_user_podcast_lists_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

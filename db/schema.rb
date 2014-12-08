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

ActiveRecord::Schema.define(version: 20141208143944) do

  create_table "articles", force: true do |t|
    t.boolean  "publishable"
    t.string   "video"
    t.text     "part1"
    t.string   "quiz1"
    t.string   "q1answer"
    t.string   "q1wrong1"
    t.string   "q1wrong2"
    t.text     "part2"
    t.string   "quiz2"
    t.string   "q2answer"
    t.string   "q2wrong1"
    t.string   "q2wrong2"
    t.text     "part3"
    t.string   "quiz3"
    t.string   "q3answer"
    t.string   "q3wrong1"
    t.string   "q3wrong2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.integer  "article_id"
    t.integer  "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "article_id"
    t.integer  "wins"
    t.integer  "loses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "parental_approval"
    t.boolean  "editor"
    t.boolean  "publisher"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

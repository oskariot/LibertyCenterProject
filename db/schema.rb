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

ActiveRecord::Schema.define(version: 20150217164810) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "photo_url"
    t.text     "about"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "amazon_url"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_citations", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "citation_id"
  end

  create_table "citations", force: true do |t|
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "author_id"
    t.string   "source"
    t.datetime "published_at"
  end

  create_table "liberty_translations", force: true do |t|
    t.string   "word"
    t.string   "lang"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: true do |t|
    t.string   "full_name"
    t.datetime "birth_date"
    t.datetime "death_date"
    t.text     "about"
    t.string   "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo_url"
  end

  create_table "square_photos", force: true do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "static_contents", force: true do |t|
    t.string   "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stickers", force: true do |t|
    t.string   "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wide_photos", force: true do |t|
    t.string   "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

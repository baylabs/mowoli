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

ActiveRecord::Schema.define(version: 20220828120101) do

  create_table "modalities", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "modalities", ["name"], name: "index_modalities_on_name", unique: true

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "patient_id",                              null: false
    t.string   "patients_sex",                            null: false
    t.string   "patients_name",                           null: false
    t.string   "referring_physicians_name",               null: false
    t.string   "requested_procedure_description",         null: false
    t.string   "study_instance_uid",                      null: false
    t.date     "patients_birth_date",                     null: false
    t.integer  "station_id",                              null: false
    t.string   "accession_numberx"
    t.string   "scheduled_procedure_step_start_datetime"
    t.string   "requesting_physicians_name"
  end

  add_index "orders", ["station_id"], name: "index_orders_on_station_id"
  add_index "orders", ["study_instance_uid"], name: "index_orders_on_study_instance_uid", unique: true

  create_table "stations", force: :cascade do |t|
    t.string   "name",                                    null: false
    t.string   "aetitle",                                 null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "receives_orders_via_hl7", default: false, null: false
    t.integer  "character_set",           default: 0,     null: false
    t.integer  "modality_id",                             null: false
  end

end

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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "exports", primary_key: "gid", force: true do |t|
    t.string  "siret",      limit: 254
    t.string  "adresse",    limit: 254
    t.string  "code_effec", limit: 254
    t.string  "ca",         limit: 254
    t.string  "email_ache", limit: 254
    t.string  "nom_place",  limit: 254
    t.string  "code_naf",   limit: 254
    t.string  "place_marc", limit: 254
    t.spatial "geom",       limit: {:srid=>4326, :type=>"point"}
  end

end

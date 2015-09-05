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

ActiveRecord::Schema.define(version: 20150830161036) do

  create_table "artigos", force: true do |t|
    t.string   "nome"
    t.decimal  "preco"
    t.integer  "desconto"
    t.integer  "id_promo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foto_artigos", force: true do |t|
    t.string   "nome"
    t.binary   "binariofoto"
    t.datetime "data"
    t.integer  "Id_artigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foto_lojas", force: true do |t|
    t.string   "nome"
    t.binary   "binariofoto"
    t.datetime "data"
    t.integer  "Id_Local"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lojas", force: true do |t|
    t.string   "nome"
    t.string   "morada"
    t.string   "latitude"
    t.string   "longitude"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promos", force: true do |t|
    t.string   "nome"
    t.datetime "dataInicio"
    t.datetime "dataFim"
    t.boolean  "activo"
    t.integer  "tipoPromo"
    t.string   "descricao"
    t.integer  "Id_Loja"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

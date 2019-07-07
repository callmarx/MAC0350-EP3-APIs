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

ActiveRecord::Schema.define(version: 2019_07_07_003802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "perfils", force: :cascade do |t|
    t.date "data_cria", null: false
    t.bigint "servico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["servico_id"], name: "index_perfils_on_servico_id"
  end

  create_table "perfils_usuarios", id: false, force: :cascade do |t|
    t.bigint "perfil_id", null: false
    t.bigint "usuario_id", null: false
    t.index ["perfil_id", "usuario_id"], name: "index_perfils_usuarios_on_perfil_id_and_usuario_id"
    t.index ["usuario_id", "perfil_id"], name: "index_perfils_usuarios_on_usuario_id_and_perfil_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.boolean "criar", null: false
    t.boolean "ler", null: false
    t.boolean "deletar", null: false
    t.boolean "atualizar", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end

  add_foreign_key "perfils", "servicos", on_delete: :cascade
end

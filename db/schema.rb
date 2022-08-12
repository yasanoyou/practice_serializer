# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_220_812_025_043) do
  create_table 'authors', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['last_name'], name: 'index_authors_on_last_name'
  end

  create_table 'book_copies', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.bigint 'book_id', null: false
    t.string 'isbn', null: false
    t.date 'published', null: false
    t.integer 'format', null: false
    t.bigint 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['book_id'], name: 'index_book_copies_on_book_id'
    t.index ['isbn'], name: 'index_book_copies_on_isbn'
    t.index ['user_id'], name: 'index_book_copies_on_user_id'
  end

  create_table 'books', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'title', null: false
    t.bigint 'author_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['author_id'], name: 'index_books_on_author_id'
    t.index ['title'], name: 'index_books_on_title'
  end

  create_table 'users', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.string 'email', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'api_key'
    t.boolean 'admin', default: false
    t.index ['api_key'], name: 'index_users_on_api_key'
    t.index ['email'], name: 'index_users_on_email'
  end

  add_foreign_key 'book_copies', 'books'
  add_foreign_key 'book_copies', 'users'
  add_foreign_key 'books', 'authors'
end

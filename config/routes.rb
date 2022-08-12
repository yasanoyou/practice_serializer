# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :v1 do
    resources :authors, only: %i[index create update destroy show]
    resources :books, only: %i[index create update destroy show]
    resources :book_copies, only: %i[index create update destroy show] do
      member do
        put :borrow
        put :return_book
      end
    end
    resources :users, only: %i[index create update destroy show]
  end
end

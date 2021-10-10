# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books, only: %i[index new create update]
  resources :authors, only: %i[new create]

  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root 'index#index'
  resources :pokemons, only: %i[index show]
end

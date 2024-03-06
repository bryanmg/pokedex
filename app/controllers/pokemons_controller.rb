# frozen_string_literal: true

class PokemonsController < ApplicationController
  before_action :set_pokemon, only: %i[show]

  # GET /pokemons
  def index
    @pokemons = nil
  end

  # GET /pokemons/{id}
  def show; end

  private

  def set_pokemon
    @pokemon = '' # WIP: Comes from API
  end
end

# frozen_string_literal: true

require 'poke-api-v2'

class PokemonsController < ApplicationController
  before_action  :set_pagination, only: %i[index]
  before_action  :set_response_pokemons_api, only: %i[index]

  # GET /pokemons
  def index
    set_pokemons if params[:pokemon_type]
    @total_results = @pokemons_api[:count]
    @pokemon_types = @pokemons_api[:results]
  end

  # GET /pokemons/{id}
  def show
    @pokemon = Pokemon.new(id: params[:id]).pokemon
  end

  private

  def set_response_pokemons_api
    # Leave as HTTP request instead of PokeAPi gem to show an example of how it works
    # This can be replaced by: PokeApi.get(pokemon_shape: {limit: 5, offset: 5})
    @pokemons_api = JSON.parse(
      HTTParty.get("https://pokeapi.co/api/v2/type?limit=#{PER_PAGE}&offset=#{@pagination[:offset] || 0}").body,
      symbolize_names: true
    )
  end

  def set_pokemons
    @pokemons = PokeApi.get(type: params[:pokemon_type])
  end

  def set_pagination
    page = params[:page].to_i || 1
    @pagination = { page: page, offset: PER_PAGE * page }
  end
end

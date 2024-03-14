# frozen_string_literal: true

require 'poke-api-v2'

# This should be a database entity
class Pokemon
  def initialize(id:)
    pokemon_data = load_from_redis(id)
    pokemon_data ||= load_from_api(id)
    @pokemon = OpenStruct.new(pokemon_data)
  end

  attr_reader :pokemon

  private

  def load_from_redis(id)
    JSON.parse(REDIS.get("pokemon-#{id}"), symbolize_names: true)
  rescue StandardError
    nil
  end

  def load_from_api(id)
    pokemon = PokeApi.get(pokemon: id).to_json
    REDIS.set("pokemon-#{id}", pokemon)
    JSON.parse(pokemon, symbolize_names: true)
  end
end

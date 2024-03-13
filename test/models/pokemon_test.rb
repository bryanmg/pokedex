require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  setup do
    stub_request(:get, "https://pokeapi.co/api/v2/pokemon/bulbasaur").to_return({body: '{"weight": 69 }'})
    @pokemon = PokeApi.get(pokemon: "bulbasaur")
  end

  test "can load pokemon from pokemon api" do
    tested_pokemon = Pokemon.new(id: "bulbasaur")

    assert @pokemon.weight, tested_pokemon.pokemon.weight
  end

  test "can load pokemon from redis the second time" do
    Pokemon.new(id: "bulbasaur")
    tested_pokemon = Pokemon.new(id: "bulbasaur")

    assert @pokemon.weight, tested_pokemon.pokemon.weight
  end
end

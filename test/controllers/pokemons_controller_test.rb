# frozen_string_literal: true

require 'test_helper'

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    stub_request(:get, "https://pokeapi.co/api/v2/type?limit=#{PER_PAGE}&offset=0")
      .to_return({ body: {
        results: [Testing::TEST_POKEMON],
        count: 20
      }.to_json })

    get pokemons_url

    assert_response :success
  end

  test 'should show pokemon' do
    num = Random.rand.to_s.split('.')[1]
    stub_request(:get,
                 "https://pokeapi.co/api/v2/pokemon/test#{num}").to_return({ body: Testing::TEST_POKEMON.to_json })

    get pokemon_url("test#{num}")

    assert_response :success
  end
end

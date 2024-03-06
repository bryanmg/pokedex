# frozen_string_literal: true

require 'test_helper'

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  # WIP

  test 'should get index' do
    get pokemons_url
    assert_response :success
  end

  test 'should show pokemon' do
    get pokemon_url('@pokemon')
    assert_response :success
  end
end

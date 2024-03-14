# frozen_string_literal: true

PER_PAGE = 5

# Using this variable since we don't have database
module Testing
  TEST_POKEMON = {
    "abilities": [
      { "ability": { "name": 'overgrow', "url": 'https://pokeapi.co/api/v2/ability/65/' }, "is_hidden": false,
        "slot": 1 }, { "ability": { "name": 'chlorophyll', "url": 'https://pokeapi.co/api/v2/ability/34/' }, "is_hidden": true, "slot": 3 }
    ], "height": 7, "id": 1, "name": 'bulbasaur', "types": [{ "slot": 1, "type": { "name": 'grass', "url": 'https://pokeapi.co/api/v2/type/12/' } }, { "slot": 2, "type": { "name": 'poison', "url": 'https://pokeapi.co/api/v2/type/4/' } }], "weight": 69, "moves": [{ "move": { "name": 'mega-punch', "url": 'https://pokeapi.co/api/v2/move/5/' } }]
  }.freeze
end

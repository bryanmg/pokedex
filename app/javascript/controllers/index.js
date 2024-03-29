// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import PokemonController from "./pokemon_controller"
application.register("pokemon", PokemonController)

import PokemonFullInfoController from "./pokemon_full_info_controller"
application.register("pokemon-full-info", PokemonFullInfoController)

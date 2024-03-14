# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin '@hotwired/stimulus', to: '@hotwired--stimulus.js' # @3.2.2
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js'
pin '@stimulus/webpack-helpers', to: '@stimulus--webpack-helpers.js' # @2.0.0
pin '@hotwired/stimulus-webpack-helpers', to: '@hotwired--stimulus-webpack-helpers.js' # @1.0.1
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'application'
pin 'register'

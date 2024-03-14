// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import { Application } from "@hotwired/stimulus";

const application = Application.start()
application.debug = false
window.Stimulus   = application

export { application }

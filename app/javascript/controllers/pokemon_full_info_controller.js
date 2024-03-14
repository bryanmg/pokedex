import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const pokemonName = this.element.dataset.pokemonName;
    const targetImg = document.getElementById(`image`);

    const imageUrl = `https://raw.githubusercontent.com/msikma/pokesprite/master/pokemon-gen8/regular/${pokemonName}.png`;
    targetImg.src = imageUrl;
  }
}

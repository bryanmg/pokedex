import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pokemon"
export default class extends Controller {
  createListItemWithData (pokemons) {
    const list = document.createElement("ul");

    pokemons.forEach(pokemon => {
      const listItem = document.createElement("li");
      const link = document.createElement("a");

      link.textContent = pokemon.pokemon.name;
      link.href = `/pokemons/${pokemon.pokemon.name}`;
      listItem.appendChild(link);
      list.appendChild(listItem);
    });
    
    return list;
  }

  async fetchPokemon(event) {
    event.preventDefault();
    const pokemonType = event.target.getAttribute("data-pokemon-type");
    const targetDiv = document.getElementById(`div-pokemon-type-${pokemonType}`);

    try {
      const response = await fetch(`https://pokeapi.co/api/v2/type/${pokemonType}`);
      const data = await response.json();

      const listHtml = this.createListItemWithData(data.pokemon);
      targetDiv.appendChild(listHtml);
    } catch (error) {
      console.error("Error loading pokemons:", error);
    }
  }
}

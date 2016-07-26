var PokemonController = function () {
  this.setListeners()
};

PokemonController.prototype.fetchPokemon = function (e) {
  var clickedEl = $(e.currentTarget);
  var url = clickedEl.data('pokemon-uri');
  $.ajax({
    url: url,
    success: this.render.bind(this),
    error: function () {
      console.log('in da error');
    }
  })
}

PokemonController.prototype.render = function (pokemonData) {
  console.log(pokemonData)
  $('.js-pokemon-name').text(pokemonData.name);
  $('.js-pokemon-id').text('#' + pokemonData.national_id);
  $('.js-pokemon-height').text(pokemonData.height);
  $('.js-pokemon-weight').text(pokemonData.weight);
  $('.js-pokemon-hitpoints').text(pokemonData.hp);
  $('.js-pokemon-attack').text(pokemonData.attack);
  $('.js-pokemon-defence').text(pokemonData.defence);
  $('.js-pokemon-sp-attack').text(pokemonData.sp_atk);
  $('.js-pokemon-sp-defence').text(pokemonData.sp_def);
  $('.js-pokemon-speed').text(pokemonData.speed);
  $('.js-pokemon-types').text(pokemonData.types[0].name);
  $('.modal').modal('show');
}

PokemonController.prototype.setListeners = function () {
  $('.js-show-pokemon').on('click', this.fetchPokemon.bind(this))
}

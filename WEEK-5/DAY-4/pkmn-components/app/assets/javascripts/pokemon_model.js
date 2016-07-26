(function () {
  window.PokemonApp = window.PokemonApp || {};

  var PokemonModel = PokemonApp.PokemonModel = function (url) {
    this.url = url
  }

  PokemonModel.prototype.fetch = function (anything) {
    // 'anything' is the function passed when fetch is called: 'view.render'
    // the function will be called -funcion style- on success
    var model = this;
    $.ajax({
      url: this.url,
      success: function (pokemonData) {
        console.log(pokemonData)
        model.name = pokemonData.name;
        model.national_id = pokemonData.national_id;
        model.height = pokemonData.height;
        model.weight = pokemonData.weight;
        model.hitpoints = pokemonData.hp;
        model.attack = pokemonData.attack;
        model.defence = pokemonData.defence;
        model.sp_attack = pokemonData.sp_atk;
        model.sp_defence = pokemonData.sp_def;
        model.speed = pokemonData.speed;
        model.types = pokemonData.types[0].name;
        anything(); // call of 'view.render' function style
      },
      error: function () {
        console.log('in da error');
      }
    })
  }
})()

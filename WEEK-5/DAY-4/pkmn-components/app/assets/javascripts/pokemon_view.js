(function () {
  if (typeof window.PokemonApp === 'undefined') {
    window.PokemonApp = {};
  }

  var PokemonView = PokemonApp.PokemonView = function (model) {
    this.model = model;
  };

  PokemonView.prototype.render = function () {
    $('.js-pokemon-name').text(this.model.name);
    $('.js-pokemon-id').text('#' + this.model.national_id);
    $('.js-pokemon-height').text(this.model.height);
    $('.js-pokemon-weight').text(this.model.weight);
    $('.js-pokemon-hitpoints').text(this.model.hitpoints);
    $('.js-pokemon-attack').text(this.model.attack);
    $('.js-pokemon-defence').text(this.model.defence);
    $('.js-pokemon-sp-attack').text(this.model.sp_attack);
    $('.js-pokemon-sp-defence').text(this.model.sp_defence);
    $('.js-pokemon-speed').text(this.model.speed);
    $('.js-pokemon-types').text(this.model.types[0].name);
    $('.modal').modal('show');
  }
})()

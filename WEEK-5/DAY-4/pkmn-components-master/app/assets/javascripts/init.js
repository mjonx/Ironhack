$(document).ready(function(){

  $('li').click(function (e) {
    var uri = $(e.target).attr("data-pokemon-uri")
    $.ajax({
      type: 'GET',
      url: uri,
      success: showModal,
      error: function (err) {
        console.log('error');
      }
    });
  });

  function showModal (pokemonData) {
    $('.js-pokemon-name').text(pokemonData.name);
    $('.js-pokemon-id').text(pokemonData.national_id);
    $('.js-pokemon-height').text(pokemonData.height);
    $('.js-pokemon-weight').text(pokemonData.weight);
    $('.modal').modal('show')
  }

})

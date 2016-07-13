
$(function () {
  var imgTag = $('<img>').attr('src', 'http://pokeapi.co/media/sprites/pokemon/back/23.png');
  $('.container').append(imgTag);

  $.ajax({
    type: 'GET',
    url: 'http://pokeapi.co/api/v2/pokemon/23/',
    success: function (response) {
      console.log('in da success');
      console.log(response);
      var imgTag = $('<img>').attr('src', response.sprites.front_default);
      $('.container').append(imgTag);
    },
    error: function (err) {
      console.log('in da error');
    }
  })
})

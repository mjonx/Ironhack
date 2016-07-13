$(function (){

  $.ajax({
    type: 'GET',
    url: 'http://ironhack-characters.herokuapp.com/characters',
    success: function (characters) {
      characters.forEach (function (characters){
        var listItem = $('<li>').text.(character.name + ' is a ' character.occupation + )
      })
      console.log('success!');
      console.log(response);
      var Chars = $(response.object[0]);
      $('.container').append(Chars);
    },
    error: function (err) {
      console.log('error...');
    }
  })

  function showCharacters () {
    var request = $.get('https://ironhack-characters.herokuapp.com/characters');
    request.forEach()
  }
})

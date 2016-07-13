
$(function () {
  $.ajax({
    type: 'GET',
    url: 'http://ironhack-characters.herokuapp.com/characters',
    success: function (characters) {
      characters.forEach( function (character) {
        var listItem = $('<li>').text(character.name + ' is a ' + character.occupation + ' with ' + character.weapon);
        $('ul.characters').append(listItem);
      })
    },
    error: function (err) {
      console.log('in da error');
    }
  })

  $('#new-character').on('submit', function (e) {
    e.preventDefault();
    var name = $('[name="name"]').val();
    var occupation = $('[name="occupation"]').val();
    var weapon = $('[name="weapon"]').val();
    var newCharacter = {
      name: name,
      occupation: occupation,
      weapon: weapon
    };
    $.ajax({
      type: 'POST',
      url: 'http://ironhack-characters.herokuapp.com/characters',
      data: newCharacter,
      success: function (response) {
        console.log('in da success');
        console.log(response);
      },
      error: function (err) {
        console.log('in da error');
      }
    })
  })
})

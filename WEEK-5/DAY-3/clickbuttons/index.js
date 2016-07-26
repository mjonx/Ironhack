$(function () {
  for (var i = 0; i < 10; i++) {
    var button = $('<button>').text('click #' + i);
    $('.container').append(button);
    button.on('click', function () {
      console.log('You clicked on the button ' + i);
    });
  }
})

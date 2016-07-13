// $(document).ready(funtion () {

// setInterval(function () {
//   // var cell = $('.cell');
//   // cell.toggleClass('blue red');
//
//   var cellblue = $('.blue');
//   cellblue.toggleClass('red');
//
//   var cellred = $('.red');
//   cellred.toggleClass('blue');
// }, 800);

  $('form').submit(funtion(e) {
    e.preventDefault();
}).validate({
    rules: {
      name: {
        required: true,
        minlength: 5
      },
      email: {
        required: true,
        email: true
      },
    },
    messages: {
      name: {
        required: "Please fill out your name!"
      }
      email: {
        required: "Please fill out your email"
      }
    }
    if ($('form'))

  });




// });

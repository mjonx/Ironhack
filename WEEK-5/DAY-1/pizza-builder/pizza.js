// Write your Pizza Builder JavaScript in this file.
var baseprice = 13;

$('.btn-pepperonni').click(function() {
  var pep = $('.pep');
  pep.each(function(index, element){
    $(element).toggleClass('hide');
  }
)
  var button = $('.btn-pepperonni');
  button.toggleClass('active');

  var price = $('strong');
  price.text(baseprice + 1);
});


$('.btn-mushrooms').click(function() {
  var mushroom = $('.mushroom');
  mushroom.each(function(index, element){
    $(element).toggleClass('hide');
  }
)
  var button = $('.btn-mushrooms');
    button.toggleClass('active');
});

$('.btn-green-peppers').click(function() {
  var greenpepper = $('.green-pepper');
  greenpepper.each(function(index, element){
    $(element).toggleClass('hide');
  }
)
  var button = $('.btn-green-peppers');
    button.toggleClass('active');
});

$('.btn-crust').click(function() {
  var glutenfree = $('.crust');
  glutenfree.each(function(index, element){
    $(element).toggleClass('crust-gluten-free');
  }
)
  var button = $('.btn-crust');
    button.toggleClass('active');
});

$('.btn-sauce').click(function() {
  var whitesauce = $('.sauce');
  whitesauce.each(function(index, element){
    $(element).toggleClass('sauce-white');
  }
)
  var button = $('.btn-sauce');
  button.toggleClass('active');
});

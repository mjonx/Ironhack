
var phrases = [
  "I like veggies",
  "I also really like music",
  "And besides that I also like traveling"
]

function showPhrase() {
  var phrase = phrases[Math.floor(Math.random()*phrases.length)];
  $(".phrase").text(phrase);
};

$(".userinput").submit(function(e){
  e.preventDefault();
  var newphrase = $('#newphrase').val();
    phrases.push(newphrase);
  $(".userinput")[0].reset()
});

function showAll() {
  var allphrases = phrases;
  console.log(allphrases);
};

showPhrase();

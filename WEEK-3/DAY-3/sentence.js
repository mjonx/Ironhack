// var sentence, message;

var sentence = "fill the proper tank for the cow";

function super_decorder(sentence, type, order) {
  var array = sentence.split(' ');

  if(type == 'even') {
    array = array.filter(function(word, index){
      return index % 2 == 0;
    })
  }
  if(type == 'odd') {
    array = array.filter(function(word, index){
      return index % 2 != 0;
    })
  }
  if(order == 'reverse') {
    array = array.reverse();
  }
  return decorder(array);
}



function evenWords(sentence, even)
  var split = sentence.filter()

function reverse(sentence) {
  return sentence.split(" ").reverse().join(" ");
}

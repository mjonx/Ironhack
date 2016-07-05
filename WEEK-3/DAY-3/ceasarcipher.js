function caesarCipher (message, shift) {
  var message = message.split('');

  var lettershift = message.map(function(letter){
    if (letter >= 'A' && letter <= 'Z') {
      var encrypted_letter;
      encrypted_letter = letter.charCodeAt(0) + shift;
        if (encrypted_letter >= 90 || encrypted_letter <= 65) {
          //split up conditional to two separate ones
          // so it can also deal with + -> independently
          var encrypted_letter;
          encrypted_letter = encrypted_letter + 26;
        }
      return encrypted_letter;

    }
    else if (letter >= 'a' && letter <= 'z'){
      var encrypted_letter;
      encrypted_letter = letter.charCodeAt(0) + shift;
      if (encrypted_letter >= 122 || encrypted_letter <= 97) {
        //split up conditional to two separate ones
        // so it can also deal with + -> independently
        var encrypted_letter;
        encrypted_letter = encrypted_letter + 26;
      }
      return encrypted_letter;
  }
  else {
    return letter.charCodeAt(0);
  }

  });


  var backToLetter = lettershift.map(function(num){
    return String.fromCharCode(num);
  })
  return backToLetter.join('');
}



var encrypted = caesarCipher("Et tu, brute?", 6);

console.log(encrypted);
//=> "_orqrp"
console.log( String.fromCharCode(95)  );  //=> "_"

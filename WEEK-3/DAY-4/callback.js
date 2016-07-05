
function thisIsACallback(){
  console.log('hi')
}
function highOrderFunction(callback) { // parent function
  callback(); // if this was a functions declared elsewhere, it would run here
}

highOrderFunction(thisIsACallback);

// returns 'Hi'

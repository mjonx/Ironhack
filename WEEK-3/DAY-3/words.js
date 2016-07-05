var words, message;

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

// message = decoder(words);
// console.log(message);

function decoder(words) {
  words.forEach(function (word, index) {
    console.log(word[index % 5]);
    // console.log('index', index);
  })
}

decoder(words);

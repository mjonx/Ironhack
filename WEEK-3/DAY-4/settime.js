// sleep(10, function() {
//   console.log('Its been 10 seconds.');
// });
//
// function sleep(time, callback){
//   var seconds = time * 1000;
//   setTimeout(callback, seconds);
// }
//
//
// ---------------------
//
// sleep(10)
//
// function sleep(time){
//   var seconds = time * 1000;
//   setTimeout(function() {
//     console.log('Its been 10 seconds.');
//   }, seconds);
// }
//
// blastOff(10)
//
// function blastOff(time){
//   for (var i = 0; i <= time; i = i + 1) {
//     setTimeout(function(){console.log(time)}, 1000);
//   }
// }
//
// console.log(blastOff());
// // console.log('Blast Off!')

// ---------------------

blastOff(10)

function blastOff(n) {
  var counter = 0;

  function start(){
  if (counter <= n) {
    console.log(counter);
    counter ++;
    setTimeout(start, 1000);
  }
  else {
    console.log('Its been 10 seconds! Blast off!')
  }
}

start ();
}

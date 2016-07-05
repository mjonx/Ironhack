// var x = 5;
// function one() {
//   var x = 1;
//   console.log(x);
// }
// one();
// // --> 1
//
// var x = 5;
// function oneAndAHalf() {
//   var x;
//   x = 1;
//   console.log(x);
// }
// oneAndAHalf();
// // --> 1
//
// var x = 5;
// function two(x) {
//   console.log(x);
// }
// two();
// // --> undefined - because you are not passing a parameter, should be calling two(x)

//
// var x = 5;
// function three() {
//   console.log(x);
// }
// three();
// // --> 5 because you are not passing a parameter and no argument is asked for in the function, so it will look for X elsewhere

var x = 5;
function three() {
  console.log(x);
}

function four() {
  x = 4;
  console.log(x);
}

four();
three();

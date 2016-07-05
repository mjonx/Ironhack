// var Car = function(model, noise) {
//   this.model = model;
//   this.noise = noise;
//   this.wheels = 4;
// }
//
// Car.prototype.makeNoise = function(){console.log('My car makes this sound:  ' + this.noise)}
// var car1 = new Car('Charger', 'Broom');
//
// car1.makeNoise();


var numbers  = [3, 100, 1, 5, 25, 10];
var newNumbers = numbers.sort(function(a, b){
  return a-b
});

console.log(newNumbers);

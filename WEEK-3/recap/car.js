// function Person(){
//   // this.age = 18;
// }
// Person.prototype.age = 18;
// Person.prototype.sayAge = function(){
//   console.log('Hi my age is ' + this.age);
// }
// // var tatjana = new Person('Tatjana');
// // var mj = new Person('Mj');
// ​
// var students = []
// for (var i = 0; i < 50; i++) {
//   students.push(new Person())
//   }
// // console.log(students);
// ​
// console.log(students[10].age)
// console.log(students[10].sayAge())

// ----
//
// function Car(model, noise) {
//   this.model = model;
//   this.noise = noise;
// }
//
// Car.prototype.wheels = 4;
// Car.prototype.makeNoise = function(){
//   console.log('My car makes this noise: ' + this.noise);
// }
//
// var mjsCar = new Car ('Charger', 'Broooooom')
//
// mjsCar.makeNoise();

// ----

// function sleep () {
//   console.log('Its been 10 seconds!');
// }
//
// setTimeout(sleep, 10000);
//
// // ----

sleep(5, function(){
  console.log("It's already been 5 secs!");
})

function sleep(time, callback){
  var seconds = time * 1000;
  setTimeout(callback, seconds);
}

// function eat(food) {
//   console.log('I love ' + food)
// }
//
// eat('veggies');
// //----------
//
//
// var person = {
//   name: "Marjon",
//   age: [],
//   addAge: function () {
//     this.age.push(29)
//   }
// }
//
// console.log('before: ', person.age);
// person.addAge(); // YOU NEED TO CALL THE FUNCTION OTHERWISE THE ARRAY IS EMPTY AND WON'T PRINT ANYTHING!!!
// console.log( 'after: ', person.age);
//
//
// // --- OR
//
// var person = {
//   name: "Marjon",
// }
//
// person.addAge = function () {
//   this.age = 29
// }
//
// console.log('before: ', person.age);
// person.addAge(); // YOU NEED TO CALL THE FUNCTION OTHERWISE THE ARRAY IS EMPTY AND WON'T PRINT ANYTHING!!!
// console.log( 'after: ', person.age);
//
//
// // // ------
//
// var animal = {
//   speak: "Mooooo!"
// }
//
// var person = {}
//
// person.name = 'Matias'
// person.whoAmI = function(){
//   (function(){console.log(this.speak)}.bind(animal))();
// }
//
// person.whoAmI();
//
// // --
//
// function Animal (name) {
//   this.name = name;
// }
//
// var lion = new Animal('lion');

// var lion = {}
// lion.constructor = Animal
// // to create a new object you need NEW and a CONSTRUCTOR! -- read more anout this

// ------ PROTOTYPE

function Person(name){
  this.name = name;
  this.sayHi = function(){
    console.log('Hi my name is ' + this.name);
  }
}

Person

var tatjana = new Person('Tatjana');
var mj = new Person('Mj');

console.log(Person.prototype);

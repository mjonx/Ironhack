function sayMyName(name) {
  console.log(this);
  console.log('Hello: ' + name);
}

var cat = {
  name: 'Markov',
  sayHello: function () {
    console.log(this);
    console.log(cat)
    console.log(cat.name + ' says hello');
    return 10;
  }
}

var Animal = function (name) {
  this.name = name;
}

Animal.prototype.sayHello = function () {
  console.log(this);
  console.log(this.name + ' yells HELLO');
}

var dog = new Animal('dog');
var bird = new Animal('birdie');
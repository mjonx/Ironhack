var Animal =  function (type, name) {
  this.type = type;
  this.name  = name;
}

Animal.prototype.sayYourName = function () {
  console.log('My name is ' + this.name);
};

var age = 10;
Animal.prototype.whoAreYou = function () {
  console.log('My name is ' + this.type);
  var animal = this;
  setTimeout(function () {
    animal.sayYourName();
    console.log('My age is' + age);
  }, 1000);
};

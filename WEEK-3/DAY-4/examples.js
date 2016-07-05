console.log("Hello, world!");
console.log(  "This needs to be in quotes or it won't work!"  );

var Help = "Help!";
console.log(  Help );

// This is a comment

/* This
is also
a comment
*/
console.log( 666 );

console.log(  "Iron" + "hack"  );

console.log( "Marjon " + 4 + " is it me you're looking for?" );



var city;

city = "Madrid";

console.log(city);

city = "Barcelona";

console.log(city);


var country = "Spain";

console.log(country);

country = "United States";

console.log(country);

country = country + " of America";

console.log(country);

var _country = "the Netherlands"

console.log(_country);




var number = 5;

if (number == 5)
	console.log("True")
else
	console.log("False")

if (number == "5")
	console.log("True")
else
	console.log("False")

if (number === 5)
	console.log("True")
else
	console.log("False")

if (number === "5")
	console.log("True")
else
	console.log("False")


___________________________________________


function sayHello ( name, surname ) {
	console.log("Hello" + " " + name + " " + surname)
}

name = "Marjon"
surname = "Siero"

sayHello( name, surname);


___________________________________________



var countries;

countries = [];

countries.push( "Russia", "Finland", "Morocco", "Brazil" );
countries.push( "Canada" );
countries.push( "Mexico", "Japan" );

console.log(countries);

for(var i = 0; i < countries.length; i++)
	console.log(i, countries[i])


//Reverse
for(var i = countries.length-1; i >= 0; i--)
	console.log(i, countries[i])


___________________________________________



var names;

names = [ "Canada", "Mexico", "Turkey", "Japan", "Spain" ];

function prepare(names) {
	string = ""
	for (var i = 0; i < names.length-2; i = i + 1){
		string = string + names[i] + ", "
	}
	return string + names[names.length-2] + " and " + names[names.length-1]
}

console.log(prepare(names));

___________________________________________

var person = {

}

var person2 = new Object()

person['name'] = 'Thor' // if the key is a string, always use sqr brackets!!
person2.name = 'Matias'

person.sayHi = function(){console.log('Hi, my name is ' + this.name)} // this is the value that represents the object that this function is applied to

person.sayHi();

___________________________________________

var Person = function(name){
	this.name = name;
	this.sayHi = function(){console.log('Hi I am ' = this.name )}
}

var thos = new Person('Thor');
thor.sayHi();

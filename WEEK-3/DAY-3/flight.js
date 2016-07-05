function checkInPassenger(name, customersArray) {
	var passengerChecked;
	for (var i = 0; i<customersArray.length; i++) {
		if (customersArray[i] == name) {
			passengerChecked = function() {
        console.log ("Hi, " + name + "You’re passenger #" + (i+1));
      };
    }
  }
return passengerChecked;
}


var flightToBali = ["Wayan", "Putu", "Gede", "Ni Luh", "Nyoman"];
var counterCheckIn = checkInPassenger("Gede", flightToBali);
counterCheckIn();

// --> will return 6 because it looped through all names in the array and then you asked to return. 5 names in the array + 1





function checkInPassenger(name, customersArray) {
	var passengerChecked;
	for (var i = 0; i<customersArray.length; i++) {
		if (customersArray[i] == name) {
			return function() {
        console.log ("Hi, " + name + "You’re passenger #" + (i+1));
      };
    }
  }
// return passengerChecked;
}


var flightToBali = ["Wayan", "Putu", "Gede", "Ni Luh", "Nyoman"];
var counterCheckIn = checkInPassenger("Gede", flightToBali);
counterCheckIn();

// --> will return 3 because you are not returning after each loop (???)

var exampleArray = [ 2, -5, 10, 5, 4, -10, 0 ]

function process(array){
  var result = [];
  array.forEach(function(number1, index1){
    array.forEach(function(number2, index2){
      if (number1 + number2 == 0) {
        result.push(index1.toString() + ',' + index2.toString())
      }
    })
  })
  return result
}

console.log(process(exampleArray));

var numbers = '80:70:90:100';
console.log(averageColon(numbers));

function averageColon (numbers) {
  var split = numbers.split(':');
  var total = split.reduce(function (previous, current){
    return parseInt(previous) + parseInt(current)
  })
  return total / split.length;
}

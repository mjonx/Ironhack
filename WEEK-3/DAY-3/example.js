var dog = 'dog' //if you declare a variable outside of a function, you can access anywhere, but its not best practice

function greet (){
  console.log(dog);
}

greet()


function greet() {
  var dog = 'dog' //all childeren will have access to this variable, but not any parents if you had any!
    function saydog() {
      console.log(dog);
    }
    saydog()
}

greet()

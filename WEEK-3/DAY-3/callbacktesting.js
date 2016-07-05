function sayHello(callback){
  callback();
}

sayHello(function(){
  console.log('hello');
})

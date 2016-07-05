function sayHello(callback){
  callback('MJ');
}
var varSayHello = function(name){
  console.log('hello' + name);
}

sayHello(varSayHello)
sayHello(function(name){
  console.log('hello' + name);
});

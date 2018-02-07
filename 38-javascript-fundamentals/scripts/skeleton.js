'use strict';

// window.myGlobalVar = 'hello';


// Numbers
var apples = 5;
var pears = -23.7;
var totalFruits = apples + pears;

// for (var i = 0; i < 20; i++) {
//
// }


// Strings
var message = "Hello world!";
var response = 'What\'s up?';
var biggerMessage = message + ' ' + response;
console.log(biggerMessage);

var myAge = 7;
var testMessage = myAge + message;
console.log(testMessage);



// Booleans (True and False)
var iLikeTheOutdoors = true;
var justKidding = false;


// undefined
var myNephewsName;
myNephewsName = 'Person';
console.log(myNephewsName);


// null
var myBankAccount = null;


// Arrays
var myItems = ['shoe', 'hat', 'comb'];
console.log(myItems);
myItems.push('jacket');
console.log(myItems);
console.log(myItems[2]);
myItems[2] = 'brush';
console.log(myItems);



// Object Literals
var eyes = {
  colour: 'blue',
  'size': 'huge',
};
var newKey = 'vision';
eyes[newKey] = 13;

var person = {
  'eyes': eyes,
  'name': 'April',
  'friend': {
    name: 'Alex',
    'eyes': 'Green',
  },
};

console.log(person);
var eyes = person['eyes'];
var eyes = person.eyes;
console.log(eyes);



// typeof
console.log(typeof undefined);


// If Statement
if (person.eyes.vision > 15 && true) {
  // thing to happen
  console.log('Good vision!');
} else if (person.eyes.vision > 10) {
  console.log('Not great!');
} else {

}

// var answer = person.eyes.vision > 15 ? 'good' : 'not great';


// For Loop
for (var index = 20; index >= 10; index -= 2) {
  console.log(index);
}

var names = ['Sarah', 'Johnnie', 'Suzie'];

for (var i = 0; i < names.length; i++) {
  var name = names[i];
  console.log(name);
}



// While Loop
var num = 0;
while (num < 20) {
  console.log(num);
  num++;
}



// Do/While Loop
// do {
//
// } while ()



// Named function
function printMyName() {
  console.log("Daniel");
}
printMyName();
console.log(printMyName);




// Functions with parameters
function sayWords(word1, word2, word3) {
  console.log(word1 + ' ' + word2 + ' ' + word3);
}
sayWords('Hello', 'world!', 'From', 'the', 'other', 'side');




// Anonymous function
var add = function(num1, num2) {
  return num1 + num2;
}

var biggerNumber = add(1, 6);
console.log(biggerNumber);
console.log(add);



// Callback
// var outputFunction =

myItems.forEach(function(item) {
  console.log(item);
});



// Scope examples -------------------
var topLevelVar = 'test';
function doStuff() {
  var innerVar = "I'm inner";
  console.log(topLevelVar);
  function doStuffInner() {
    console.log(topLevelVar);
    console.log(innerVar);
  }
  doStuffInner();
}
doStuff();

// this breaks!
// console.log(innerVar);


// ES6 or ES2015 variable declarations
// let key = 3;
// const snail = 'alive';


// Callbacks --------------------------

function timeMe(functionToTime) {
  console.time('first');
  functionToTime();
  console.timeEnd('first');
}

function doLots() {
  for (var i = 0; i < 100000000; i++) {

  }
}

timeMe(doLots);



// forEach callback



// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------




// asynchronous JS

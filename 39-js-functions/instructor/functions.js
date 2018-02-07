// Basics

// Write a function that takes someone's order

// function order(food) {
//   var message = "That's one " + food + ", please!";
//   console.log(message);
//   return message;
// }

var order = function(food) {
  var message = "That's one " + food + ", please!";
  if (order.pastOrders === undefined) {
    order.pastOrders = [];
  }
  order.pastOrders.push(food)
  console.log(message);

  console.log(order.newThing, '----------------');
  return message;
}

// console.log(order);



order('pizza');

var school = {
  numStudents: 100,
  numRooms: 5,
}
console.log(school);
var attribute = 'location';
school.name = 'Bitmaker';
school[attribute] = 'Toronto';
console.log(school);
console.log(school.undefined);
console.log(school.location);

order.newThing = 'Try this out!';
console.log(order);
order('pasta');
console.log(order.newThing);

console.log(order.pastOrders);


// var actions = [order, order(), order()];
// console.log(actions);

// actions[1]('hamburger');

// parenthesis - ()
// brackets - []
// curly braces - {}
// angle brackets - <>


// Call the function



// Questions:

// Can we assign a function to a variable?

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?

// Let's add our first event handlers to this simple document

// 1. Add an event handler to element with id of click-bait & pop up an alert
// Hint: Select the element (via getElementById) or (querySelector)
// Hint: Add an event listner via `addEventListener` on the `click` event
// Hint: Add an anonymous fn as the callback
var clickBaitEle = document.querySelector('#click-bait');
var containerEle = document.querySelector('#container');

clickBaitEle.addEventListener('click', function(eventObject) {
  // console.log(eventObject);
  eventObject.preventDefault();
  window.alert("Click Bait Element was clicked!");
});


// 2. Add an event handler (on click) to element with id of `second-level` & pop up alert
// This time, create a function declaration
var secondLevelEle = document.querySelector('#second-level');

function secondLevelEventHandler(event) {
  window.alert("Second Level was clicked!");
  event.stopPropagation();
}

secondLevelEle.addEventListener('click', secondLevelEventHandler);


// 3. Add an event handler (on click) to element with id of `first-level` & pop up alert
// This time, create a function expression
var firstLevelEle = document.querySelector('#first-level');

var firstLevelEventHandler = function() {
  window.alert("First Level was clicked!");
};

firstLevelEle.addEventListener('click', firstLevelEventHandler);

// 4. Add an event handler (on keyup) to window and change contents of the element
// with the class of 'keypressed` with the key code
// Hint: Bind to `keyup` event, use any type of function (anon, declar, exp)
// Hint: Select the desired element, change its `innerHTML`, find the Key code on the `event` obj (`which`)
window.addEventListener('keyup', function(e) {
  // Add the key code inside of the `keypressed` div

  var keyCode = e.which;
  document.querySelector('.keypressed').innerHTML = keyCode;

  // If the letter `a`(keycode is 65) is pressed, change the bg colour of container to tomato

  if (keyCode === 65) {
    containerEle.style.backgroundColor = 'tomato';
  }
  else {
    containerEle.style.backgroundColor = '#ccc';
  }
});


// Function Review

// Anonymous Function
(
  function() {
    console.log("I'm anonymous!");
  }
)

// Function Declaration
function fnDeclaration() {
  console.log("I'm a function declaration");
}

fnDeclaration();

// Function Expression
var fnExpression = function() {
  console.log("I'm a function expression!");
};

fnExpression();

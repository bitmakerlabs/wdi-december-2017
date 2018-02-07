// Callbacks

// var items = ['keys', 'wallet', 'phone'];
//
// var return_value = items.forEach(function(item, index, all_items) {
//   console.log(index + ": " + item + ", " + all_items);
// });
//
// console.log(return_value);



// foreach

// var items = ['keys', 'wallet', 'phone'];
//
// for (var i = 0; i < items.length; i++) {
//   actOnItem(items[i])
// }
//
// function actOnItem(item) {
//   var message = "The item is " + item + "."
//   console.log(message);
// }
//
//
// items.forEach(actOnItem);
//
//
//
//
// function doStuff() {
//   for (var i = 0; i < 1000000000; i++) {
//
//   }
//   return i
// }
//
// console.log('-------------------');
//
// // console.log('Function is starting!');
// // console.time('testing doStuff');
// // doStuff()
// // console.timeEnd('testing doStuff');
//
//
// // function timeMe(functionToTime) {
// //   console.time('testing doStuff');
// //   functionToTime();
// //   console.timeEnd('testing doStuff');
// // }
// //
// // timeMe(doStuff);
// // timeMe(actOnItem);
// // console.log('Function is done!');
//
//
//
// console.log('starting');
// setTimeout(function() {
//   // code goes here
//   console.log('FINALLY FINISHED');
//   setTimeout(function() {
//     console.log('INNER ONE FINISHED!!!!111one');
//     console.log(houses);
//   }, 2000)
// }, 3000);
// setTimeout(function() {
//   console.log('shorter one finished!');
// }, 1000);
//
// console.log('ending');
//
//
//
// var houses = 20;




function useBread() {
  console.log(' ---- ');
}
function usePatty() {
  console.log('[[[]]]');
}
function useDoublePatty() {
  usePatty();
  usePatty();
}
function useTomatoes() {
  console.log(' ==== ');
}
function useLettuce() {
  console.log(' ~~~~ ');
}

// composite instructions
function jeffsToppings() {
  useLettuce();
  useTomatoes();
}

function makeBurger(addPatty, addToppings) {
  useBread();
  addToppings();
  addPatty();
  useBread();

  console.log();
}

makeBurger(usePatty, useTomatoes);
makeBurger(useDoublePatty, useLettuce);
makeBurger(usePatty, jeffsToppings);
// makeBurger();
// makeBurger();











//

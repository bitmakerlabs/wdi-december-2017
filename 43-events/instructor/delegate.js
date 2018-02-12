document.addEventListener('DOMContentLoaded', function() {
  // Function scope

  var count = 0,
      colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'gold', 'fuschia'];

  var container = document.querySelector('#container');
  // Because we're creating elements dynamically, it's better for browser memory
  // if we use a delegated event handler (listening for the event on a parent element)
  // we'll only create _one_ event handler as opposed to an infinite amount.

  // Bind a handler when to an element that doens't exist yet

  var boxMaker = document.querySelector('#box-maker');

  boxMaker.addEventListener('click', function() {
      var x = Math.ceil(Math.random() * 400),
          y = Math.ceil(Math.random() * 200),
          c = Math.ceil(Math.random() * 7);

      var circle = document.createElement('div');

      circle.className = 'circle';

      circle.style.top = y + 'px';
      circle.style.left = x + 'px';
      circle.style.backgroundColor = colors[c];

      circle.innerHTML = count++;

      // When we click on a circle, do something

      container.append(circle);

      console.log('link was clicked');
  });

});

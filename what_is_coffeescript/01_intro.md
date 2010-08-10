!SLIDE 

# CoffeeScript Definition

…is a little language that compiles into JavaScript. Think of it as
JavaScript's less ostentatious kid brother — the same genes, roughly the same
height, but a different sense of style.

!SLIDE
# What does that mean?

!SLIDE
# Variables

    @@@ javascript
    var number;
    number = 42;

Becomes:

    @@@ coffeescript
    number = 42;

!SLIDE
# So what?

!SLIDE
# Functions

    @@@ javascript
    var square = function(x) {
        return x * x;
    }

Becomes:

    @@@ javascript
    square = (x) ->
        x * x

!SLIDE
# Objects
    @@@ javascript
    math =
        square: square

!SLIDE
# Classes
    @@@ javascript
    puts = require("sys").puts
    class Animal
      constructor: (@name) ->

      move: (meters) ->
        puts @name + " moved " + meters + "m."

    class Snake extends Animal
      move: ->
        puts "Slithering..."
        super 5

    class Horse extends Animal
      move: ->
        puts "Galloping..."
        super 45

!SLIDE
# Classes

    @@@ javascript
    sam = new Snake "Sammy the Python"
    tom = new Horse "Tommy the Palomino"

    sam.move()
    tom.move()
    
    // output

    // Slithering...
    // Sammy the Python moved 5m.
    // Galloping...
    // Tommy the Palomino moved 45m.


!SLIDE
# In CoffeeScript
    @@@ javascript
    puts = require("sys").puts
    class Animal
      constructor: (@name) ->

      move: (meters) ->
        puts @name + " moved " + meters + "m."

    class Snake extends Animal
      move: ->
        puts "Slithering..."
        super 5

    class Horse extends Animal
      move: ->
        puts "Galloping..."
        super 45

!SLIDE
# In JavaScript

    @@@ javascript
    var Animal, Horse, Snake, sam, tom;
    var __extends = function(child, parent) {
        var ctor = function(){};
        ctor.prototype = parent.prototype;
        child.prototype = new ctor();
        child.prototype.constructor = child;
        if (typeof parent.extended === "function") parent.extended(child);
        child.__superClass__ = parent.prototype;
      };
    Animal = function(_a) {
      this.name = _a;
      return this;
    };
    Animal.prototype.move = function(meters) {
      return alert(this.name + " moved " + meters + "m.");
    };
    Snake = function() {
      return Animal.apply(this, arguments);
    };
    __extends(Snake, Animal);
    Snake.prototype.move = function() {
      alert("Slithering...");
      return Snake.__superClass__.move.call(this, 5);
    };
    Horse = function() {
      return Animal.apply(this, arguments);
    };
    __extends(Horse, Animal);
    Horse.prototype.move = function() {
      alert("Galloping...");
      return Horse.__superClass__.move.call(this, 45);
    };
    sam = new Snake("Sammy the Python");
    tom = new Horse("Tommy the Palomino");
    sam.move();
    tom.move();



!SLIDE
# Improvments

* Optional parenthesis, semi-colons, and commas
* Improved "class"
* Concise Syntax
* Pattern matching
* Splats
* Cake

!SLIDE
# Installation (from source)

    @@@ sh
    > hub clone jashkenas/coffee-script
    > cd coffee-script
    > cake install

!SLIDE
# Installation (via NPM)

    @@@ sh
    > npm install coffee-script

!SLIDE
# Installation (via Homebrew)

    @@@ sh
    > brew install coffee-script


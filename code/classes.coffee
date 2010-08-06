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

sam = new Snake "Sammy the Python"
tom = new Horse "Tommy the Palomino"

sam.move()
tom.move()


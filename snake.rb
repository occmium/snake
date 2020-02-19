require 'byebug'
require 'ruby2d'
require_relative 'lib/game'
require_relative 'lib/worm'

set width: 250,
    height: 250,
    title: 'Snake',
    background: 'navy'

PIXEL = 10
WIDTH = Window.width
HEIGHT = Window.height

game = Game.new
worm = Worm.new

game.new_point
worm.new_worm

show

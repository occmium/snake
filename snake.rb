require 'byebug'
require 'ruby2d'
require_relative 'lib/game'
require_relative 'lib/worm'

set fps_cap: 10,
    width: 250,
    height: 250,
    title: 'Snake',
    background: 'navy'

PIXEL = 10
WIDTH = Window.width / PIXEL
HEIGHT = Window.height / PIXEL

game = Game.new
worm = Worm.new

update do
  clear
  game.new_point
  worm.new_worm
  worm.make_step
end

on :key_down do |key_event|
  if worm.can_direction_changed?(key_event.key)
    worm.direction = key_event.key
  end
  puts worm.direction.inspect
end

show

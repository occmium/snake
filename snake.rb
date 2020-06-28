# frozen_string_literal: true

require 'byebug'
require 'ruby2d'
require_relative 'lib/game'
require_relative 'lib/worm'

set width: 250,
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
  worm.make_step
  worm.show
  game.show_new_point
  if game.did_worm_take_point?(worm.body_parts)
    worm.grow
    game.count
  end
  sleep 1.0 / (game.counter + 1) if worm.direction
  close if worm.ate_wall? || worm.ate_self?
end

on :key_down do |key_event|
  worm.direction = key_event.key if worm.can_direction_changed?(key_event.key)
end

print "\n The game is running ...\r"
show
puts game

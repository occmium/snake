require 'byebug'
require 'ruby2d'
require_relative 'lib/game'
require_relative 'lib/worm'

set fps_cap: 7,
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
  worm.make_step # змейке сделать шаг в известном направлении
  worm.show # показать все части змейки
  game.show_new_point # показать новую точку
  if game.did_worm_take_point?(worm.body_parts) # вырасти если попала
    worm.grow
    game.count
  end
end

on :key_down do |key_event|
  if worm.can_direction_changed?(key_event.key)
    worm.direction = key_event.key
  end
end

print "\n The game is running ...\r"
show
puts game

# frozen_string_literal: true

class Game
  attr_reader :counter

  def initialize
    @point_x = rand(WIDTH)
    @point_y = rand(HEIGHT)
    @counter = 0
  end

  def show_new_point
    Square.new(
      x: @point_x * PIXEL,
      y: @point_y * PIXEL,
      size: PIXEL - 1,
      color: 'red'
    )
  end

  def did_worm_take_point?(body)
    body.include?([@point_x, @point_y])
  end

  def count
    @counter += 1
    @point_x = rand(WIDTH)
    @point_y = rand(HEIGHT)
  end

  def to_s
    " The game is stopped    \n\n Your score #{@counter}\n\n"
  end
end

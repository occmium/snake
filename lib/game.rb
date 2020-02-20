class Game
  def initialize
    @point_x = rand(WIDTH)
    @point_y = rand(HEIGHT)
  end

  def new_point
    Square.new(
      x: @point_x * PIXEL,
      y: @point_y * PIXEL,
      size: PIXEL - 1,
      color: 'red'
    )
  end
end

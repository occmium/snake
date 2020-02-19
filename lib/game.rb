class Game
  def initialize
    @point_x = PIXEL / 2 + rand(WIDTH)
    @point_y = PIXEL / 2 + rand(HEIGHT)
  end

  def new_point
    Circle.new(
      x: @point_x,
      y: @point_y,
      radius: PIXEL / 2,
      color: 'red'
    )
  end
end

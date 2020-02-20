class Worm
  attr_accessor :direction

  def initialize
    @body_parts = [
      [12, 12],
      [12, 13],
      [12, 14]
    ]
    @direction = nil
  end

  def new_worm
    @body_parts.each do |part|
      Square.new(
        x: part[0] * PIXEL,
        y: part[1] * PIXEL,
        size: PIXEL - 1,
        color: 'white'
      )
    end
  end

  def make_step
    @body_parts.shift if @direction
    @body_parts << [head[0], head[1] + 1] if @direction == 'down'
    @body_parts << [head[0], head[1] - 1] if @direction == 'up'
    @body_parts << [head[0] - 1, head[1]] if @direction == 'left'
    @body_parts << [head[0] + 1, head[1]] if @direction == 'right'
  end

  def can_direction_changed?(new_direction)
    case @direction
      when 'up' then new_direction != 'down'
      when 'down' then new_direction != 'up'
      when 'left' then new_direction != 'right'
      when 'right' then new_direction != 'left'
    else
      new_direction
    end
  end

  def head
    @body_parts.last
  end
end

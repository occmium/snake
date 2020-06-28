# frozen_string_literal: true

class Worm
  attr_accessor :direction
  attr_reader :body_parts

  def initialize
    @body_parts = [
      [12, 12],
      [12, 13],
      [12, 14]
    ]
    @direction = nil
    @growing = false
  end

  def show
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
    if @direction
      @body_parts.shift unless @growing
    end

    case @direction
    when 'up'
      @body_parts << [head[0], head[1] - 1]
    when 'down'
      @body_parts << [head[0], head[1] + 1]
    when 'left'
      @body_parts << [head[0] - 1, head[1]]
    when 'right'
      @body_parts << [head[0] + 1, head[1]]
    end

    @growing = false
  end

  def can_direction_changed?(new_direction)
    case @direction
    when nil then new_direction != 'up'
    when 'up' then new_direction != 'down'
    when 'down' then new_direction != 'up'
    when 'left' then new_direction != 'right'
    when 'right' then new_direction != 'left'
    else
      new_direction
    end
  end

  def grow
    @growing = true
  end

  def ate_self?
    @body_parts.uniq.size != @body_parts.size
  end

  def ate_wall?
    (0...WIDTH).none?(head[0]) || (0...HEIGHT).none?(head[1])
  end

  def head
    @body_parts.last
  end
end

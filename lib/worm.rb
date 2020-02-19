class Worm
  def initialize
    @body_parts = [
      [12, 12],
      [12, 13],
      [12, 14]
    ]
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
end

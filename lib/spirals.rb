class Spirals
  attr_reader :starting, :width
  attr_accessor :result, :starting

  def initialize(starting, width)
    @starting = starting - 1
    @width    = width
    @result   = width.times.map { [] }
  end

  def generate
    position = {:x => 0, :y => 0}
    direction = {:x => :pos, :y => :pos}
    current_dir = :y
    numbers_placed = 0

    while (numbers_placed < (width * width)) do
      if in_bounds(position[current_dir]) && result[position[:x]][position[:y]].nil?
        result[position[:x]][position[:y]] = next_number
        next_position(current_dir, direction, position)
        numbers_placed += 1
      else
        direction[current_dir] = direction[current_dir] == :pos ? :neg : :pos
        next_position(current_dir, direction, position)

        current_dir = current_dir == :y ? :x : :y
        next_position(current_dir, direction, position)
      end
    end

    result
  end

  def next_position(current_dir, direction, position)
    direction[current_dir] == :pos ? position[current_dir] += 1 : position[current_dir] -= 1
  end

  private

  def next_number
    self.starting += 1
  end

  def in_bounds(coordinate)
    coordinate < width
  end
end
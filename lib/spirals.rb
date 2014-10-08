class Spirals
  attr_reader :starting, :width

  def initialize(starting, width)
    @starting = starting
    @width = width
  end

  def generate
    width.times.map { starting }
  end
end
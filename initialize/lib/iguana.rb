class Iguana
  attr_reader :colors

  def initialize
    @colors = []
  end

  def colors
    @colors
  end

  def colors=(c)
    @colors = c
  end
end

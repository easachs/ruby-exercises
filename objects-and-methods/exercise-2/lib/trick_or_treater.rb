class TrickOrTreater
  attr_reader :costume, :bag, :sugar_level
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !@bag.empty
  end

  def candy_count
    @bag.count
  end

  def eat
    @sugar_level += @bag.candies[-1].sugar
    @bag.candies.pop
    @empty = true if @bag.count == 0
  end
end

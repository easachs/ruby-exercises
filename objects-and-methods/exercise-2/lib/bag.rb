require_relative './candy'

class Bag
  attr_reader :empty,
              :candies,
              :grabbed,
              :taken

  def initialize
    @empty = true
    @candies = []
    @grabbed = nil
    @taken = []
  end

  def << candy
    @candies << candy
    @empty = false
  end

  def contains?(candy)
    @candies.to_s.include?(candy)
  end

  def grab(candy)
    if @candies.any? {candy}
      @grabbed = @candies.find { |c|
        c.type.match?(candy) }
      @candies.delete(@candies.find { |c|
        c.type.match?(candy) })
      @empty = true if @candies == []
      @grabbed
    end
  end

  def take(n)
    if n == 1
      @taken << @candies[0]
      @candies.pop
      @empty = true
      @taken[0]
    else n.times {
      @taken << @candies[0]
      @candies.shift }
      @empty = true if @candies == []
      @taken
    end
  end

  def empty?
    @empty
  end

  def count
    @candies.count
  end
end

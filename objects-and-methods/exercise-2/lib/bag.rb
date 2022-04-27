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
      @grabbed = @candies.find do |c|
        c.type.match?(candy)
      end
      @candies.delete(@candies.find { |c|
        c.type.match?(candy) })
        @empty = true if @candies == []
      @grabbed
    end
  end

  def take(n)
    if n == 1
      return @candies[0]
      @candies.pop
      @empty = true
    end
    n.times do
      @taken << @candies[0]
      @candies.pop
    end
  end

  def empty?
    @empty
  end

  def count
    @candies.count
  end
end

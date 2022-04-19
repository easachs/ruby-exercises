class Bag
  attr_reader :empty, :candies, :count

  def initialize
    @empty = empty
    @candies = []
    @count = @candies.count
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def << candy
    @candies << candy
  end

  def contains?(candy)
    @candies.to_s.include?(candy)
  end

  def grab candy
    @candies.delete(candy)
  end

end

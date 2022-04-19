class Bag
attr_reader :empty, :count, :candies

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
end

class Children

  attr_reader :eldest

  def initialize
    @children = []
    @eldest = nil
  end

  def << child
    @children << child
    if @eldest == nil
      @eldest = child
    elsif child.age > @eldest.age
      @eldest = child
    end
  end
end

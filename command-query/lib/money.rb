class Money
  attr_reader :amount
  def initialize
    @amount = 0
  end

  def earn(x)
    @amount += x
  end
end

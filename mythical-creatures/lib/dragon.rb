class Dragon
attr_reader :name, :color, :rider, :hunger, :meals

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = true
    @meals = 0
  end

  def hungry?
    @hunger
  end

  def eat
    @meals += 1
    @hunger = false if @meals == 3
  end
end

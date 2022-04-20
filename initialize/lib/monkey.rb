class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(attr)
    @name = attr[0]
    @type = attr[1]
    @favorite_food = attr[2]
  end
end

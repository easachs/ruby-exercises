class Item
  attr_reader :name, :price, :discount
  def initialize(name, info)
    @name = name
    @price = info[:price]
    @discount = info[:discount]
  end
end

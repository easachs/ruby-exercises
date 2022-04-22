class Catalog
  def initialize
    @products = []
    @cheapest = nil
  end

  def << product
    @products << product
    if @cheapest == nil
      @cheapest = product
    elsif product.cost < @cheapest.cost
      @cheapest = product
    end
  end

  def cheapest
    if @cheapest == nil
      nil
    else
      @cheapest.name
    end
  end

end

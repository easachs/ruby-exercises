class Clearance

  def initialize
    @best_deal = nil
  end

  def << item
    if @best_deal == nil
      @best_deal = item
    elsif (item.discount.to_f / item.price.to_f) > (@best_deal.discount.to_f / @best_deal.price.to_f)
      @best_deal = item
    end
  end

  def best_deal
    if @best_deal == nil
      nil
    else
      @best_deal.name
    end
  end
end

class Cupcakes
  attr_reader :sweetest
  def initialize
    @cupcakes = []
    @sweetest = nil
  end

  def << cupcake
    @cupcakes << cupcake
    if @sweetest == nil
      @sweetest = cupcake
    else
      @sweetest = cupcake if cupcake.grams > @sweetest.grams
    end
  end
end

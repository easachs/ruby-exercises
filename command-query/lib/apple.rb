class Apple

  def initialize
    @ripe = false
    @week = 0
  end

  def ripe?
    @ripe
  end

  def wait_a_week
    @week += 1
    @ripe = true if @week > 2
  end

end

class Santa

  def initialize
    @fits = true
    @cookies = 0
  end

  def fits?
    @fits
  end

  def eats_cookies
    @cookies += 1
    @fits = false if @cookies > 2
  end
end

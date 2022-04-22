class Appointments

  attr_reader :earliest

  def initialize
    @earliest = nil
  end

  def at(time)
    if @earliest == nil
      @earliest = time
    elsif time < @earliest
      @earliest = time
    end
  end

end

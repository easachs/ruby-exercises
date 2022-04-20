class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count >= 3
      @statues.first.unstone
      statues.shift
    end
    @statues << victim
    victim.stone
  end
end

class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def stone
    @stoned = true
  end

  def unstone
    @stoned = false
  end
end

class Werewolf
  attr_reader :name,
              :location,
              :human,
              :wolf,
              :hungry,
              :consumed

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @consumed = []
  end

  def change!
    if @human
      @human = false
      @wolf = true
      @hungry = true
    else
      @human = true
      @wolf = false
    end
  end

  def consume(victim)
    if @human
      'No!'
    else
      @consumed << victim
      @hungry = false
      victim.die
    end
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end
end


class Victim
  attr_reader :alive

  def initialize
    @alive = true
  end

  def die
    @alive = false
  end
end

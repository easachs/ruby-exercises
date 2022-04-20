class Ogre
  attr_reader :name,
              :home,
              :encounter_counter,
              :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.add_encounter
    if human.notices_ogre
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    if @swings > 1
      human.knock_out
    end
  end

  def apologize(human)
    human.wake_up
  end    
end


class Human
  attr_reader :name,
              :encounter_counter,
              :notices_ogre,
              :knocked_out

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end

  def add_encounter
    @encounter_counter += 1
    if @encounter_counter % 3 == 0
      @notices_ogre = true
    else
      @notices_ogre = false
    end
  end

  def notices_ogre?
    @notices_ogre
  end

  def knock_out
    @knocked_out = true
  end

  def wake_up
    @knocked_out = false
  end

  def knocked_out?
    @knocked_out
  end
end

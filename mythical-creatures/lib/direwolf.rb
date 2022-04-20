class Direwolf
  attr_reader :name,
              :home,
              :size,
              :starks_to_protect,
              :hunts_white_walkers

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    @hunts_white_walkers = false
    if @home == stark.location
      starks_to_protect << stark
      if starks_to_protect.length > 2
        starks_to_protect.pop
      else
        stark.make_safe
      end
    end
  end

  def leaves(stark)
    stark.make_unsafe
    @starks_to_protect.delete(stark)
    if @starks_to_protect.empty?
      @hunts_white_walkers = true
    end
    stark
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end
end


class Stark
  attr_reader :name,
              :location,
              :safe,
              :house_words

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end

  def make_safe
    @safe = true
  end

  def make_unsafe
    @safe = false
  end
end

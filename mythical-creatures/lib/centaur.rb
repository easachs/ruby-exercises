class Centaur
  attr_reader :name, :breed, :cranky, :actions, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @actions = 0
    @sick = false
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def shoot
    @actions += 1
    if @laying
      'NO!'
    elsif @actions >= 3
      @cranky = true
      'NO!'
    else
      'Twang!!!'
    end
  end

  def run
    @actions += 1
    if @laying
      'NO!'
    elsif @actions >= 3
      @cranky = true
      'NO!'
    else
      'Clop clop clop clop!'
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if @standing
      'NO!'
    else
      @cranky = false
      @actions = 0
    end
  end

  def drink_potion
    if @laying
      'NO!'
    elsif @actions == 0
      @sick = true
    else
      @cranky = false
      @actions = 0
    end
  end
end

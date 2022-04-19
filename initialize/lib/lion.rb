class Lion
  attr_reader :name, :sound

  def initialize(name, sound)
    @name = name
    @sound = sound
  end

  def name
    @name
  end

  def sound
    @sound
  end
end

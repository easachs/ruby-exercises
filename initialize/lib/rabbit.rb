class Rabbit
  attr_reader :name, :num_syllables

  def initialize(attr)
    @name = attr.fetch(:name)
    @num_syllables = attr.fetch(:num_syllables)
  end

  def name
    @num_syllables == 2 ? @name + " Rabbit" : @name
  end
end

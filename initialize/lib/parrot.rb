class Parrot
  attr_reader :name, :sound, :known_words

  def initialize(attr)
    @name = attr.fetch(:name)
    @sound = 'Squawk!'
    @known_words = attr.fetch(:known_words)
  end
end

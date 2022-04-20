class Lion
  attr_reader :name, :sound

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @sound = attributes.fetch(:sound)
  end
end

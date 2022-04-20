class Narwhal
  attr_reader :cute, :weight, :name

  def initialize(attr)
    @cute = attr.fetch(:cute)
    @weight = attr.fetch(:weight)
    @name = attr.fetch(:name)
  end

  def cute?
    @cute
  end

end

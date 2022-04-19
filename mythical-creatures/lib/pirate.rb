class Pirate
  attr_reader :name, :job, :heinous, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @heinous = 0
    @booty = 0
  end

  def cursed?
    return true if @heinous > 2
    false
  end

  def commit_heinous_act
    @heinous += 1
  end

  def rob_ship
    @booty += 100
  end
end

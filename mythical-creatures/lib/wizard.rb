class Wizard
  attr_reader :name, :bearded, :rested

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = 0
  end

  def bearded?
    @bearded
  end

  def incantation(power)
    "sudo " + power
  end

  def cast
    @rested += 1
    return "MAGIC MISSILE!"
  end

  def rested?
    return false if @rested >= 3
    true
  end
end

# # ruby-exercises/mythical-creatures/wizard.rb
# class Wizard
#   attr_reader :name
#   def initialize(name, bearded: false)
#     @name = name
#     @rested = 0
#   end
#   def bearded?
#     if name == "Ben"
#       true
#     else
#       false
#     end
#   end
#   def incantation(saying)
#     "sudo " + saying
#   end
#   def rested?
#     if @rested >= 3
#       false
#     else
#       true
#     end
#   end
#   def cast
#     @rested += 1
#     "MAGIC MISSILE!"
#   end
# end

class RollCall

  def initialize
    @names = []
  end

  def longest_name
    @names.max_by do |n|
      n.length
    end
  end

  def << name
    @names << name
  end
end

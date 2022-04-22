class MadLib

  def noun(n)
    @n = n
  end

  def verb(v)
    @v = v
  end

  def adjective(adj)
    @adj = adj
  end

  def adverb(adv)
    @adv = adv
  end

  def result
    "Do you #{@v} your #{@adj} #{@n} #{@adv}? That's hilarious!"
  end

end

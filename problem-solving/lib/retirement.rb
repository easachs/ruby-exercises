class Retirement

  def calculate(x,y)
    if x < 0
      "Error. Age cannot be negative."
    elsif y < 0
      "Error. Retirement age cannot be negative."
    else
      ra = y - x
      ry = 2015 + ra
      "You have #{ra} years left until you can retire. It is 2015, so you can retire in #{ry}."
    end
  end

end

class Student

  attr_reader :grade

  def initialize
    @grade_value = 2
    @grade = 'C'
  end

  def new_grade
    if @grade_value == 0
      @grade = 'F'
    elsif @grade_value == 1
      @grade = 'D'
    elsif @grade_value == 2
      @grade = 'C'
    elsif @grade_value == 3
      @grade = 'B'
    elsif @grade_value == 4
      @grade = 'A'
    elsif @grade_value >= 5
      @grade_value = 4
    elsif @grade_value < 0
      @grade_value = 0
    end
  end

  def study
    @grade_value += 1
    self.new_grade
  end

  def slack_off
    @grade_value -= 1
    self.new_grade
  end
end

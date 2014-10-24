class Student

  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end

  def full_name
    @full_name = @first_name + " " + @last_name
  end

  def grade_average
    @grades.size > 0 ? @grades.inject { |sum, num| sum += num } / @grades.size.to_f : 0
  end

  def letter_grade
    case grade_average()
      when 90..100
        "A"
      when 80...90
        "B"
      when 70...80
        "C"
      when 60...70
        "D"
      else
        "F"
    end
  end

  def passed?
    letter_grade != "F"
  end

  def to_s
    "#{full_name}, #{letter_grade} (#{grade_average})"
  end
end

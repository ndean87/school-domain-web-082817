require 'pry'

class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
      @roster[grade] << student
  end

  def grade(grade)
    #loop through and puts out each array value
    grade_array = []
    @roster.each do |grades, student|
      if grades == grade
        student.each do |student_name|
          grade_array << student_name
        end
      end
    end
    grade_array
  end

  def sort
    @roster.map { |grade, student| [grade, student.sort]}.to_h

  end


end

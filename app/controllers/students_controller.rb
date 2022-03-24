class StudentsController < ApplicationController
  def index
    all_students = Student.all
    render json: all_students
  end

  def grades
    student_grades = Student.order(grade: :desc)
    render json: student_grades
  end

  def highest_grade
    student_grades = Student.order(grade: :desc)
    student_highest_grade = student_grades[0]
    render json: student_highest_grade
  end

end

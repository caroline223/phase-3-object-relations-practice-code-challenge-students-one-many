class Cohort < ActiveRecord::Base
  has_many :students

  def students
    Student.select do |student|
        student.cohort_id == self.id
    end
  end

  def add_student(name, age)
    Student.create(
        name: name,
        age: age,
        cohort_id: self.id
    )
  end

  def average_age
    Student.average(:age).to_f
  end

  def total_students
    self.students.size
  end

  def self.biggest
    includes(:students).all.max_by {|cohort| cohort.students.length}
  end

  def self.sort_by_mod
    Cohort.order(:current_mod)
  end

end
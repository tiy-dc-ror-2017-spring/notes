require_relative "test_helper"

class StudentTest < Minitest::Test
  def teardown
    Student.delete_all
  end

  def test_student_exists
    assert Student
  end

  def test_can_create_a_student
    student = Student.create(name: "Robby Dore")
    assert student.persisted?
  end
end

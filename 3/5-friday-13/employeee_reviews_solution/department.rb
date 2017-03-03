require './employee'
require 'pry'

class Department < ActiveRecord::Base
  has_many :staff, class_name: "Employee"
  validates :name, presence: true

  # def staff
  #   Employee.where(department_id: self.id)
  # end

  def add_employee(new_employee)
    staff << new_employee
    # new_employee.department_id = self.id
    # new_employee.save
  end

  def department_salary
    self.staff.reduce(0.0) {|sum, e| sum + e.salary}
  end

  def department_raise(alloted_amount)
    raise_eligible = staff.select {|e| yield(e)}

    amount = alloted_amount / raise_eligible.length
    raise_eligible.each {|e| e.raise_by_amount(amount)}
  end
end

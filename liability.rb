class Liability
  attr_reader :employee, :tax_due, :amount_owed

  def initialize(employee)
    @employee = employee
    @tax_due = employee.annual_income * employee.tax_rate
    @amount_owed = @tax_due - employee.tax_paid
  end

end

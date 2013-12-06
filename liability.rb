class Liability
  attr_reader :employee, :tax_due, :amount_owed

  def initialize(employee)
    @employee = employee
    @tax_due = 45600.0
    @amount_owed = 17600.0
  end

end

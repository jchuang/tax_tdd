require 'rspec'
require_relative 'liability.rb'
require_relative 'employee.rb'

describe Liability do

  let (:employee) { Employee.new('Johnny', 'Smith', 120000, 28000, 38.0) }
  let (:liability) { Liability.new(employee) }
  let (:tax_due) { liability.tax_due }

  it 'should expose an Employee object' do
    expect(liability.employee).to be_an_instance_of(Employee)
  end

  it 'should calculate the amount of tax due' do
    expect(tax_due).to eql(employee.annual_income * employee.tax_rate)
  end

  it 'should calculate the amount owed' do
    expect(liability.amount_owed).to eql(tax_due - employee.tax_paid)
  end

end

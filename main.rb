require 'pry'
require 'csv'

require_relative 'employee.rb'
require_relative 'tax_calculator.rb'
require_relative 'liability.rb'

employees = Employee.read_file('tax_data.csv')
liabilities = employees.map { |employee| TaxCalculator.liability (employee) }

puts "=== TAX SUMMARY ==="

employees.each_with_index do |employee, index|
  amount_owed = liabilities[index].amount_owed.round
  name = "#{ employee.first_name} #{ employee.last_name }"
  if amount_owed > 0
    puts "#{ name } has a tax liability of $#{ amount_owed }"
  else
    puts "#{ name } will receive a refund of -$#{ amount_owed.abs }"
  end
end

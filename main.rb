require 'csv'

require_relative 'employee.rb'
require_relative 'tax_calculator.rb'
require_relative 'liability.rb'

employees = Employee.read_file('tax_data.csv')

puts "=== TAX SUMMARY ==="

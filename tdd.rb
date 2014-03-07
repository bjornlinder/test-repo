require 'csv'
require 'pry'

class TaxCalc
  attr :citizens
   def initialize
    @citizens = {}
    CSV.foreach('tax.csv', headers: true) do |row|
      @citizens[row['first_name'] + ' ' + row['last_name']] = Citizen.new(row['first_name'],
                                                                          row['last_name'],
                                                                          row['annual_income'],
                                                                          row['tax_paid'],
                                                                          row['tax_rate'])
    end
    binding.pry
   end

  def tax_liability(citizens)
    ((citizens.annual_income.to_i * (citizens.tax_rate.to_i / 100)) - citizens.tax_paid).to_i

  end
end


class Citizen < TaxCalc
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate
  def initialize(first_name,last_name,annual_income,tax_paid,tax_rate)
    @first_name = first_name
    @last_name = last_name
    @annual_income = annual_income
    @tax_paid = tax_paid
    @tax_rate = tax_rate
  end
end


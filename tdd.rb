require 'csv'

class Citizen
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate
  attr_accessor :tax_owed
  def initialize(first_name,last_name,annual_income,tax_paid,tax_rate)
    @first_name = first_name
    @last_name = last_name
    @annual_income = annual_income
    @tax_paid = tax_paid
    @tax_rate = tax_rate
    @tax_owed = 0
  end

  def tax_liability
    total = annual_income * (tax_rate * 0.01)
    taxes = total - tax_paid
    @tax_owed += taxes
  end

end

people = []
CSV.foreach('tax.csv', headers: true) do |row|
  people << Citizen.new(row['first_name'],
                      row['last_name'],
                      row['annual_income'].to_i,
                      row['tax_paid'].to_i,
                      row['tax_rate'].to_i)
end

people.each do |individual|
  individual.tax_liability
end

people.each do |individual|
  if individual.tax_owed < 0
    puts "#{individual.first_name} " + "#{individual.last_name}" + " will receive a refund of $#{individual.tax_owed.abs.to_i}"
  else
    puts "#{individual.first_name} " + "#{individual.last_name}" + " owes " + "$#{individual.tax_owed.to_i}" + " in taxes"
  end
end



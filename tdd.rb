require 'csv'
require 'pry'

class Citizen
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate
  def initialize(first_name,last_name,annual_income,tax_paid,tax_rate)
    
  end
end

class TaxCalculator
  def tax_liability
  end
  
  def tax_owed
  end
  
end

CSV.foreach('tax.csv', headers: true) do |row|
  citizens[row['first_name'] + ' ' + row['last_name']] = Citizen.new(row['first_name'],row['last_name'],row['annual_income'],row['tax_paid'],row['tax_rate'])
 
end

class Citizens
  @@citizens = {}
  def initialize(citizen)
    
  end
  puts citizens
  puts citizens.to_hash
end



# 
# CSV.foreach('tax.csv', headers: true) do |row|
#   citizen=Citizen.new(row.to_hash)
# end
# 
# class Citizens
#   @@citizens = []
#   
#   def self.citizen(name)
#     return @@citizen[name]
#   end
#   def initialize(citizens)
#     @@citizens << citizens
#   end
# end

 #  def import_data
    # CSV.foreach('tax.csv', headers: true) do |row|
    #    return row
#     end
#   end
# end
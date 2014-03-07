require 'csv'
require 'pry'

class TaxCalc
  attr_reader :citizens
  
  def tax_liability(citizen)
    @citizens[citizen].tax_rate.to_i

  end
  #   
  #   def tax_owed
  #   end
  
  def initialize
    @citizens = {}
    
    CSV.foreach('tax.csv', headers: true) do |row|      
      @citizens[row['first_name'] + ' ' + row['last_name']] = Citizen.new(row['first_name'],row['last_name'], row['annual_income'],row['tax_paid'],row['tax_rate'])                                                                      
    end
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





# class TaxCalculator
#   def tax_liability
#   end
#   
#   def tax_owed
#   end
#   
# end
